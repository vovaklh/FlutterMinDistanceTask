import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/core/mixins/error_provider.dart';
import 'package:shortest_way_task/core/mixins/validator.dart';
import 'package:shortest_way_task/core/utils/error_handler.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:shortest_way_task/presentation/cubits/data_cubit.dart';
import 'package:shortest_way_task/presentation/dialogs/loader_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Validator, ErrorProvider {
  final _formKey = GlobalKey<FormState>();
  final _urlController = TextEditingController();
  final _cubit = locator<DataCubit>();

  bool _isDialogShown = false;

  void _onButtonPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      _cubit.getData(_urlController.text);
    }
  }

  void _listenBloc(_, DataState state) {
    state.maybeWhen(
      loading: _showLoaderDialog,
      successGetApiUrl: (apiUrl) {
        _urlController.text = apiUrl;
      },
      successGetData: (data) {
        _dismissDialog();
      },
      error: (exception) {
        _dismissDialog();
        showError(ErrorHandler.processError(context, exception), context);
      },
      orElse: () {},
    );
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  context.localizations.setValidUrl,
                  style: context.text.homePageTitle,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.compare_arrows_outlined,
                      color: context.color.homePageIconColor,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: _urlController,
                        validator: (value) => validateUrl(value, context),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300,
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
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
