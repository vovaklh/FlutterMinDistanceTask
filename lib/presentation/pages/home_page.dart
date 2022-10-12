import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/core/mixins/error_provider.dart';
import 'package:shortest_way_task/core/mixins/validator.dart';
import 'package:shortest_way_task/core/utils/error_handler.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/presentation/cubits/data_cubit/data_cubit.dart';
import 'package:shortest_way_task/presentation/dialogs/loader_dialog.dart';
import 'package:shortest_way_task/presentation/pages/process_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Validator, ErrorProvider {
  final _formKey = GlobalKey<FormState>();
  final _urlController = TextEditingController();
  final _cubit = locator<DataCubit>();
  final _node = FocusNode();

  bool _isDialogShown = false;

  void _onButtonPressed() {
    _node.unfocus();
    if (_formKey.currentState?.validate() ?? false) {
      _cubit.getData(_urlController.text);
    }
  }

  void _listenBloc(_, DataState state) {
    _dismissDialog();
    state.maybeWhen(
      loading: _showLoaderDialog,
      successGetApiUrl: (apiUrl) => _urlController.text = apiUrl,
      successGetData: (data) => _goToProcessPage(data),
      error: (exception) =>
          showError(ErrorHandler.processError(context, exception), context),
      orElse: () {},
    );
  }

  void _goToProcessPage(List<Data> data) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => ProcessPage(data: data),
    ));
  }

  void _showLoaderDialog() {
    showDialog(
      context: context,
      builder: (_) => const LoaderDialog(),
    );
    _isDialogShown = true;
  }

  void _dismissDialog() {
    if (_isDialogShown) {
      Navigator.of(context).pop();
      _isDialogShown = false;
    }
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _cubit.loadUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home screen"),
        centerTitle: false,
      ),
      body: BlocListener<DataCubit, DataState>(
        bloc: _cubit,
        listener: _listenBloc,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localizations.setValidUrl,
                  style: context.text.homePageTitle,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.compare_arrows_outlined,
                      color: context.color.homePageIconColor,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: _urlController,
                        focusNode: _node,
                        validator: (value) => validateUrl(value, context),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _onButtonPressed,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        textStyle: context.text.startCountingButton,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(context.localizations.startCountingProcess),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
