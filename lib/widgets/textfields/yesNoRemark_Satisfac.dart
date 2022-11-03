import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class YesNoRemSatisfactory extends StatefulWidget {
  String DataSetName_nd_SatisUnsat;
   String DataSetName_nd_Remark;
  final String Qnumber;
  final String question;
  final String t1;
  final String t2;
  String hintText;

  YesNoRemSatisfactory(
      {Key? key,
      required this.DataSetName_nd_SatisUnsat,
      required this.DataSetName_nd_Remark,
      required this.Qnumber,
      required this.question,
      required this.t1,
      required this.t2,
      required this.hintText
      })
      : super(key: key);

  @override
  State<YesNoRemSatisfactory> createState() => _YesNoRemSatisfactoryState();
}

class _YesNoRemSatisfactoryState extends State<YesNoRemSatisfactory> {
  bool optionSelectedSatis = false;
  bool optionSelectedUnSatis = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
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
          Container(
            //color: Colors.amber,
            child: Row(
                  children: [
                    SizedBox(width: 22,),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 35,
                        minWidth: MediaQuery.of(context).size.width * 0.34,
                        maxWidth: MediaQuery.of(context).size.width * 0.35,
                      ),
                      child: MaterialButton(
                        color: optionSelectedSatis ? Colors.amber : Colors.grey[500],
                        onPressed: () {
                          setState(() {
                            optionSelectedSatis = !optionSelectedSatis;
                            optionSelectedUnSatis = false;
                          });
                          SPHM_Data_MAP[widget.DataSetName_nd_SatisUnsat]= "Satisfied";
                        },
                        child: const Text(
                          "Satisfied",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 35,
                        minWidth: MediaQuery.of(context).size.width * 0.34,
                        maxWidth: MediaQuery.of(context).size.width * 0.35,
                      ),
                      child: MaterialButton(
                        color: optionSelectedUnSatis ? Colors.amber : Colors.grey[500],
                        onPressed: () {
                          setState(() {
                            optionSelectedUnSatis = !optionSelectedUnSatis;
                            optionSelectedSatis = false;
                          });
                          SPHM_Data_MAP[widget.DataSetName_nd_SatisUnsat]=  "Unsatisfied";
                        },
                        child: const Text(
                          "Unsatisfied",
                          style: TextStyle(
                            fontSize: 16,
                            //color: optionSelectedNo ? Colors.amber : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          TextField(
            maxLength: 39,
            maxLines: 7,
            minLines: 1,
            decoration:  InputDecoration(
              labelText: 'Remark',
              hintText: widget.hintText,
              labelStyle: TextStyle(color: Colors.black),
            ),
            onChanged: (value) {
              SPHM_Data_MAP[widget.DataSetName_nd_Remark] = value;
            }
          ),
        ],
      ),
    );
  }
}

