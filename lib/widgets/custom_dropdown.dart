import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {Key? key,
        required this.titleText,
        required this.hintText,
        required this.fun,
        required this.list})
      : super(key: key);
  final String titleText;
  final String hintText;
  final fun;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleText,style: TextStyle(fontSize: 14,fontFamily: 'rubix',color: Colors.black54, fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        SizedBox(

          child: DropdownButtonFormField<String>(
            isExpanded: true,
            style:  TextStyle(overflow: TextOverflow.ellipsis,

                color: Colors.black,
                fontSize: 14,
                fontFamily: 'rubix'),

            hint: Text(
              hintText,
              style: const TextStyle(overflow: TextOverflow.ellipsis,
                  color: Colors.black54, fontFamily: 'rubix', fontWeight: FontWeight.bold),
            ),
            onChanged: fun,
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            iconDisabledColor: Colors.black,
            iconEnabledColor: Colors.black,
            decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10,right: 10),
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
            ),
          ),
        )
      ],
    );
  }
}
