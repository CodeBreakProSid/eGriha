import 'package:dropdown_search/dropdown_search.dart';
import 'package:egraha_app/presentation/core/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../core/global_widgets/appbar_global.dart';

class ScreenDPRForm extends StatelessWidget {
  const ScreenDPRForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dprFormKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Work Progress',
          widgets: const SizedBox(),
        ),
      ),
      body: FormBuilder(
        key: dprFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                L_HEIGHT10,
                DropdownSearch(
                  items: const [
                    'Project 1',
                    'Project 2',
                    'Project 3',
                    'Project 4'
                  ],
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    itemBuilder: (context, item, isSelected) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                  itemAsString: (item) => item.toString(),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    baseStyle: TextStyle(fontSize: 10),
                    dropdownSearchDecoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: 'Select Project',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // onChanged: (value) {
                  //   controller.selectedTrain = value;
                  // },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select project';
                    }

                    return null;
                  },
                ),
                L_HEIGHT10,
                DropdownSearch(
                  items: const [
                    'Site 1',
                    'Site 2',
                    'Site 3',
                    'Site 4',
                  ],
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    itemBuilder: (context, item, isSelected) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                  itemAsString: (item) => item.toString(),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    baseStyle: TextStyle(fontSize: 10),
                    dropdownSearchDecoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: 'Select project sites',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // onChanged: (value) {
                  //   controller.selectedTrain = value;
                  // },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select project site';
                    }

                    return null;
                  },
                ),
                L_HEIGHT10,
                DropdownSearch(
                  items: const [
                    'Block 1',
                    'Block 2',
                    'Block 3',
                    'Block 4',
                  ],
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    itemBuilder: (context, item, isSelected) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                  itemAsString: (item) => item.toString(),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    baseStyle: TextStyle(fontSize: 10),
                    dropdownSearchDecoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: 'Select site block',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // onChanged: (value) {
                  //   controller.selectedTrain = value;
                  // },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select block';
                    }

                    return null;
                  },
                ),
                L_HEIGHT10,
                DropdownSearch(
                  items: const [
                    'Sub-Milestone 1',
                    'Sub-Milestone 2',
                    'Sub-Milestone 3',
                    'Sub-Milestone 4',
                  ],
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    itemBuilder: (context, item, isSelected) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                  itemAsString: (item) => item.toString(),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    baseStyle: TextStyle(fontSize: 10),
                    dropdownSearchDecoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: 'Select Sub-Milestone',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // onChanged: (value) {
                  //   controller.selectedTrain = value;
                  // },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Sub-Milestone';
                    }

                    return null;
                  },
                ),
                L_HEIGHT10,
                DropdownSearch(
                  items: const [
                    'Breakdown 1',
                    'Breakdown 2',
                    'Breakdown 3',
                    'Breakdown 4',
                  ],
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    itemBuilder: (context, item, isSelected) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                  itemAsString: (item) => item.toString(),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    baseStyle: TextStyle(fontSize: 10),
                    dropdownSearchDecoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: 'Select work breakdown',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // onChanged: (value) {
                  //   controller.selectedTrain = value;
                  // },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select work breakdown';
                    }

                    return null;
                  },
                ),
                L_HEIGHT20,
                const Row(
                  children: [
                    Text(
                      'Check if any kind of the following machines was used on the site.',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                FormBuilderCheckboxGroup(
                  name: 'machinary',
                  options: const [
                    FormBuilderFieldOption(value: 'Machine 1'),
                    FormBuilderFieldOption(value: 'Machine 2'),
                    FormBuilderFieldOption(value: 'Machine 3'),
                    FormBuilderFieldOption(value: 'Machine 1'),
                    FormBuilderFieldOption(value: 'Machine 2'),
                    FormBuilderFieldOption(value: 'Machine 3'),
                  ],
                  decoration: const InputDecoration(
                    border: InputBorder.none, // Remove the underline
                  ),
                ),
                L_HEIGHT10,
                DropdownSearch(
                  items: const [
                    'Progressing',
                    'Partially Complted',
                    'Completed',
                  ],
                  popupProps: PopupProps.menu(
                    showSearchBox: true,
                    itemBuilder: (context, item, isSelected) {
                      return Container(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          item.toString(),
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    },
                  ),
                  itemAsString: (item) => item.toString(),
                  dropdownDecoratorProps: const DropDownDecoratorProps(
                    baseStyle: TextStyle(fontSize: 10),
                    dropdownSearchDecoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      labelText: 'Select work status',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  // onChanged: (value) {
                  //   controller.selectedTrain = value;
                  // },
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null) {
                      return 'Please select work status';
                    }

                    return null;
                  },
                ),
                L_HEIGHT10,
                SizedBox(
                  height: 50,
                  child: FormBuilderTextField(
                    keyboardType: TextInputType.number,
                    name: 'qow',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      labelText: 'Quantity of work',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                      //prefixText: '+91',
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)')
                          .hasMatch(value)) {
                        return 'Please enter valid mobile number';
                      }

                      return null;
                    },
                  ),
                ),
                L_HEIGHT10,
                FormBuilderTextField(
                  name: 'ws',
                  maxLines: 3,
                  maxLength: 150,
                  initialValue: '',
                  decoration: const InputDecoration(
                    labelText: 'Work summary',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    helperText: '(It accept max 150 characters)',
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter work summary';
                    }

                    return null;
                  },
                ),
                L_HEIGHT30,
                Align(
                  child: SizedBox(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: APP_DRAWER_HEADER_COLOR,
                        //surfaceTintColor: Colors.orange.shade700,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
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
