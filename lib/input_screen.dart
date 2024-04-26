import 'package:flutter/material.dart';
import 'package:flutter_application_2/cusrom_drop_down_widget.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello '),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: CustomDropDownWidget(
              items: ['female', 'male'],
              selectedItem: 'Name',
            ),
          ),
          Expanded(
            child: CustomDropDownWidget(
              items: ['female', 'male'],
              selectedItem: 'gender2',
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomDropDownWidget(
                    items: ['female', 'male'],
                    selectedItem: 'ROW',
                  ),
                ),
                Expanded(
                  child: CustomDropDownWidget(
                    items: ['female', 'male'],
                    selectedItem: 'ROW2',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomDropDownWidget(
                    items: ['female', 'male'],
                    selectedItem: 'ROW',
                  ),
                ),
                Expanded(
                  child: CustomDropDownWidget(
                    items: ['female', 'male'],
                    selectedItem: 'ROW2',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomDropDownWidget(
                    items: ['female', 'male'],
                    selectedItem: 'ROW',
                  ),
                ),
                Expanded(
                  child: CustomDropDownWidget(
                    items: ['female', 'male'],
                    selectedItem: 'ROW2',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
