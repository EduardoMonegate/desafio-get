import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSearchSolicitation extends StatelessWidget {
  final void Function()? onPressedIcon;
  final void Function()? onPressedCard;
  final String? hintText;
  final String? hintTextNumber;
  final Function(String)? onChanged;
  const CustomSearchSolicitation({
    Key? key,
    required this.onPressedIcon,
    required this.onPressedCard,
    required this.hintText,
    required this.onChanged,required this.hintTextNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: hintTextNumber
              ),
              onChanged: onChanged,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          IconButton(
            onPressed: onPressedIcon,
            icon: Icon(Icons.search),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: TextField(
              enableInteractiveSelection: false,
              focusNode: FocusNode(),
              onTap: onPressedCard,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
