import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class SatisPercentRemark extends StatefulWidget {
  final String DataSet_nd_sat;
  final String DataSet_nd_per;
  final String DataSet_nd_remark;
  final String Qnumber;
  final String question;
  String hintTextsatis;
  String hintTextrem;

  SatisPercentRemark(
      {Key? key,
      required this.DataSet_nd_sat,
      required this.DataSet_nd_per,
      required this.DataSet_nd_remark,
      required this.Qnumber,
      required this.question,
      required this.hintTextsatis,required this.hintTextrem
      })
      : super(key: key);

  @override
  State<SatisPercentRemark> createState() => _SatisPercentRemarkState();
}

class _SatisPercentRemarkState extends State<SatisPercentRemark> {
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
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                //  minWidth: MediaQuery.of(context).size.width ,
                  maxWidth: MediaQuery.of(context).size.width * 0.82 ,
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
                  keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal:0),
                      //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      labelText: 'Satisfactory',
                      hintText: widget.hintTextsatis,
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                    
                    onChanged: (value) {
                      SPHM_Data_MAP[widget.DataSet_nd_sat] = value;
                    }),
              ),
              const SizedBox(width: 16),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  maxWidth: MediaQuery.of(context).size.width * 0.35,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal:0),
                      //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      labelText: 'Percentage %',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  
                    onChanged: (value) {
                      SPHM_Data_MAP[widget.DataSet_nd_per] = value;
                    }),
              ),
            ],
          ),
          TextField(
            maxLines: 7,
            minLines: 1,
            decoration: InputDecoration(
              labelText: 'Remark',
              hintText: widget.hintTextrem,
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