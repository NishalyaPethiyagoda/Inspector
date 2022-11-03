import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class NumRemark extends StatefulWidget {
  final String DataSet_nd_number;
  final String DataSet_nd_remark;
  final String Qnumber;
  final String question;
  String hintText;

  NumRemark(
      {Key? key,
      required this.DataSet_nd_number,
      required this.DataSet_nd_remark,
      required this.Qnumber,
      required this.question,
      required this.hintText,
      })
      : super(key: key);

  @override
  State<NumRemark> createState() => _NumRemarkState();
}

class _NumRemarkState extends State<NumRemark> {
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
                  style: const TextStyle(fontSize: 16,),
                  ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                decoration: BoxDecoration(
                  //color: Colors.amber,
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  minWidth: MediaQuery.of(context).size.width * 0.55,
                  maxWidth: MediaQuery.of(context).size.width * 0.57 ,
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
              Container(
                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  maxWidth: MediaQuery.of(context).size.width * 0.25,
                ),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal:0),
                      //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      labelText: 'Number',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
        
                    onChanged: (value) {
                      SPHM_Data_MAP[widget.DataSet_nd_number] = value;
                    }),
              ),
            ],
          ),
          TextField(
            maxLines: 7,
            minLines: 1,
            decoration: InputDecoration(
              labelText: 'Remark',
              hintText: widget.hintText,
              labelStyle: TextStyle(color: Colors.black),
            ),
            
            onChanged: (value) {
              SPHM_Data_MAP[widget.DataSet_nd_remark] = value;
            }
          ),
        ],
      ),
    );
  }
}