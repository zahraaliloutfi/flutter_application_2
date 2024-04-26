import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {
  final List<String> items;
  final String? selectedItem;

  const CustomDropDownWidget({
    Key? key,
    required this.items,
    required this.selectedItem,
  }) : super(key: key);

  @override
  _CustomDropDownWidgetState createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  // List<String> _items = ['Apple', 'Banana', 'Cherry', 'Date'];
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue;
                });
              },
              items: widget.items.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text('${widget.selectedItem}'),
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
