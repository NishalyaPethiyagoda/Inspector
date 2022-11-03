import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  LabeledCheckbox({
    Key? key,
    required this.label,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  String label;
  bool value;

  Function onChanged;

  @override
  Widget build(BuildContext context) {
    bool newValue;
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: InkWell(
        onTap: () {
          //  onChanged(!value);
          newValue = true;
          //onChanged(!newvalue);
        },
        child: Row(
          children: <Widget>[
            Text(label),
            Checkbox(
              value: value,
              onChanged: (newValue) {
                value = newValue!;
                print(value);
                //onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class CustomCheckbox extends StatefulWidget {
//    Function onChange;
//    bool isChecked ;
//   double size;
//    //double iconSize;
//    Color selectedColor;
//    //Color selectedIconColor;
//    Color borderColor;
//    Icon checkIcon;

//   CustomCheckbox(
//       {required this.isChecked,
//       required this.onChange,
//       required this.size,
//      // required this.iconSize,
//       required this.selectedColor,
//      // required this.selectedIconColor,
//       required this.borderColor,
//       required this.checkIcon});

//   @override
//   _CustomCheckboxState createState() => _CustomCheckboxState();
// }

// class _CustomCheckboxState extends State<CustomCheckbox> {
//   bool _isSelected = false;

//   @override
//   void initState() {
//     _isSelected = widget.isChecked = false;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isSelected = !_isSelected;
//           widget.onChange(_isSelected);
//         });
//       },
//       // child: AnimatedContainer(
//       //   margin: EdgeInsets.all(4),
//       //   duration: Duration(milliseconds: 500),
//       //   curve: Curves.fastLinearToSlowEaseIn,
//       //   decoration: BoxDecoration(
//       //       color: _isSelected
//       //           ? widget.selectedColor = Colors.blue
//       //           : Colors.transparent,
//       //       borderRadius: BorderRadius.circular(3.0),
//       //       border: Border.all(
//       //         color: widget.borderColor = Colors.black,
//       //         width: 1.5,
//       //       )),
//       //   width: widget.size = 18,
//       //   height: widget.size = 18,
//       //   child: _isSelected
//       //       ? Icon(
//       //           Icons.check,
//       //           color: widget.selectedIconColor = Colors.white,
//       //           size: widget.iconSize = 14,
//       //         )
//       //       : null,
//       // ),
//     );
//   }
// }