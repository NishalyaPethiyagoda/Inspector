import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class NumPercentRemark extends StatefulWidget {
  final String Qnumber;
  final String question;
  String DataSet_nd_number;
  String DataSet_nd_percent;
  String DataSet_nd_remark;
  String hintText;

  NumPercentRemark({
    Key? key,
    required this.Qnumber,
    required this.question,
    required this.DataSet_nd_number,
    required this.DataSet_nd_percent,
    required this.DataSet_nd_remark,
    required this.hintText,
  }) : super(key: key);

  @override
  State<NumPercentRemark> createState() => _NumPercentRemarkState();
}

class _NumPercentRemarkState extends State<NumPercentRemark> {
  //
  TextEditingController numberController = TextEditingController();
  TextEditingController percentController = TextEditingController();
  TextEditingController remarkController = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 4.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  widget.Qnumber,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  //  minWidth: MediaQuery.of(context).size.width ,
                  maxWidth: MediaQuery.of(context).size.width * 0.82,
                ),
                child: Text(
                  widget.question,
                  softWrap: true,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  maxWidth: MediaQuery.of(context).size.width * 0.35,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration:  InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                    labelText: 'Number',
                    labelStyle: TextStyle(color: Colors.black),
                    
                  ),
                  onChanged: (value) {
                    SPHM_Data_MAP[widget.DataSet_nd_number] = value;
                    //print(widget.number);
                  },
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return '';
                  //   }
                  // },

                  // onSaved: (value) {
                  //   widget.number = value!;
                  // }
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  maxWidth: MediaQuery.of(context).size.width * 0.35,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                    controller: percentController,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      labelText: 'Percentage %',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                    
                    onChanged: (value) {
                      SPHM_Data_MAP[widget.DataSet_nd_percent] = value;
                    }),
              ),
            ],
          ),
          TextField(
            controller: remarkController,
            maxLines: 7,
            minLines: 1,
            decoration:  InputDecoration(
              labelText: 'Remark',
              hintText:  widget.hintText,
              labelStyle: TextStyle(color: Colors.black),
            ),
            
            onChanged: (value) {
              SPHM_Data_MAP[widget.DataSet_nd_remark] = value;
              //print(widget.number);
            },
          )
        ],
      ),
    );
  }
}
