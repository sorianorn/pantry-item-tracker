import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:no_to_food_waste_app/application/screens/item/widgets/image_input.dart';
import 'package:no_to_food_waste_app/application/screens/main/widgets/base_appbar.dart';

class NewItemScreen extends StatefulWidget {
  const NewItemScreen({super.key});

  @override
  State<NewItemScreen> createState() => _NewItemScreenState();
}

class _NewItemScreenState extends State<NewItemScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _expiryDateFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(title: 'Add item'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              onChanged: () {
                _formKey.currentState!.save();
                debugPrint(_formKey.currentState!.value.toString());
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: 'item_name',
                    decoration: const InputDecoration(labelText: 'Item name'),
                    maxLength: 50,
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.max(50),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .35,
                          child: FormBuilderTextField(
                            name: 'item_quantity',
                            textAlign: TextAlign.end,
                            initialValue: '1',
                            decoration:
                                const InputDecoration(labelText: 'Quantity'),
                            keyboardType: TextInputType.number,
                            valueTransformer: (text) => num.tryParse(text!),
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          flex: 2,
                          child: FormBuilderDateTimePicker(
                            key: _expiryDateFieldKey,
                            name: 'expiry_date',
                            initialEntryMode: DatePickerEntryMode.calendar,
                            initialValue: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 5),
                            format: DateFormat('yyyy-MM-dd'),
                            inputType: InputType.date,
                            decoration: InputDecoration(
                              labelText: 'Expiry Date',
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  _formKey.currentState!.fields['expiry_date']
                                      ?.didChange(null);
                                },
                              ),
                            ),
                            validator: (val) {
                              if (val == null) {
                                return 'This field cannot be empty.';
                              }
                              return null;
                            },
                            // locale: const Locale.fromSubtags(languageCode: 'fr'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),

                  // FormBuilderImagePicker(
                  //   name: 'item_photo',
                  //   decoration: const InputDecoration(labelText: 'Add a photo'),
                  //   maxImages: 1,
                  //   fit: BoxFit.cover,
                  //   //previewHeight: double.infinity,
                  //   previewWidth: double.infinity,
                  // ),
                ],
              ),
            ),
            ImageInput(
              onPickImage: ((image) {}),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      _formKey.currentState?.reset();
                    },
                    child: Text(
                      'Reset',
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: OutlinedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.primary),
                        foregroundColor: MaterialStateProperty.all(
                            Theme.of(context).colorScheme.onPrimary)),
                    onPressed: () {
                      bool? isFormValid = _formKey.currentState?.isValid;
                      print(isFormValid!);
                      if (isFormValid) {
                        print(_formKey.currentState?.errors.toString());
                        debugPrint(_formKey.currentState?.value.toString());
                      } else {
                        print(_formKey.currentState?.errors.toString());
                        debugPrint(_formKey.currentState?.value.toString());
                        debugPrint('validation failed');
                      }
                    },
                    child: const Text(
                      'Submit',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
