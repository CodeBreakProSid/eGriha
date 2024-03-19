import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../core/global_widgets/appbar_global.dart';
import '../core/themes/theme_data.dart';

class ScreenDLRForm extends StatelessWidget {
  const ScreenDLRForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dlrFormKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBarGlobal(
          appBarTitle: 'Labour Status',
          widgets: const SizedBox(),
        ),
      ),
      body: FormBuilder(
        key: dlrFormKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5),
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
