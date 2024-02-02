import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomTableRoles extends StatelessWidget {
  final data;
  final String firstColoum;
  final String secondColoum;
  final String thirdColoum;
  final String fourthColoum;
  const CustomTableRoles({Key? key, this.data, required this.firstColoum, required this.secondColoum, required this.thirdColoum, required this.fourthColoum, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          defaultColumnWidth: FlexColumnWidth(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text(firstColoum,style: TextStyle(fontSize: 10,fontFamily: 'rubix' ,fontWeight: FontWeight.bold),))),
              TableCell(child: Center(child: Text(secondColoum,style: TextStyle(fontSize: 10,fontFamily: 'rubix',fontWeight: FontWeight.bold),))),
              TableCell(child: Center(child: Text(thirdColoum,style: TextStyle(fontSize: 10,fontFamily: 'rubix' ,fontWeight: FontWeight.bold),))),
              TableCell(child: Center(child: Text(fourthColoum,style: TextStyle(fontSize: 10,fontFamily: 'rubix',fontWeight: FontWeight.bold),))),
              TableCell(child: Center(child: Text(""))),
            ])
          ],
        ),
        SizedBox(height: 10,),
        Table(defaultColumnWidth: FlexColumnWidth(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(data.length, (index) => TableRow(decoration: BoxDecoration(color: data[index].status=='Active'?Colors.white:Color(0xFFFFF7F7),border: Border(top: BorderSide(color: Color(0xFFF5F5F5),width: 2),bottom: BorderSide(width: 2,color: Color(0xFFF5F5F5)),)),
              children: [
                Container(height: 50,alignment: Alignment.center,child: Text(data[index].userName,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'rubix',),)),
                Container(height: 50,alignment: Alignment.center,child: Text(data[index].email,style: TextStyle(color: Color(0xFF8798AD),fontSize: 15,fontFamily: 'rubix',),)),
                Container(height: 50,alignment: Alignment.center,child: Text(data[index].roleAssign,style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: 'rubix',),)),
                Container(height: 50,alignment: Alignment.center,child: Text(data[index].status,style: TextStyle(color:data[index].status=='Active'?Colors.green:Colors.redAccent ,fontWeight: FontWeight.bold,fontSize: 14,fontFamily: 'rubix',),textAlign: TextAlign.center,)),
                Container(height: 50,alignment: Alignment.center,
                  child:PopupMenuButton(
                    splashRadius: 2,
                    onSelected: onSelected(index),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          value: 'edit',
                          child: Container(width: 100,
                            child: Row(
                              children: [
                                Text('Edit',style: TextStyle(fontFamily: 'rubix',fontSize: 12),),
                                Spacer(),
                                SvgPicture.asset('images/edit.svg')
                              ],
                            ),
                          ),
                        ),

                        PopupMenuItem(
                          value: 'delete',
                          child: Container(width: 100,
                            child: Row(
                              children: [
                                Text('Delete',style: TextStyle(fontFamily: 'rubix',fontSize: 12),),
                                Spacer(),
                                SvgPicture.asset('images/delete.svg')
                              ],
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 'deactivate',
                          child: Container(width: 100,
                            child: Row(
                              children: [
                                Text('Deactivate',style: TextStyle(fontFamily: 'rubix',fontSize: 12),),
                                Spacer(),
                                SvgPicture.asset('images/block-user.svg')
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                  )
                ),
              ]
          )),
        ),
      ],
    );
  }
  onSelected(index){

  }
}
