import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';

class YesNoRemark extends StatefulWidget {
  String DataSetName_nd_YesNo;
  String DataSetName_nd_Remark;
  final String Qnumber;
  final String question;
  String hintText;

  YesNoRemark(
      {Key? key,
      required this.DataSetName_nd_YesNo,
      required this.DataSetName_nd_Remark,
      required this.Qnumber,
      required this.question,
      required this.hintText})
      : super(key: key);

  @override
  State<YesNoRemark> createState() => _YesNoRemarkState();
}

class _YesNoRemarkState extends State<YesNoRemark> {
  bool optionSelectedYes = false;
  bool optionSelectedNo = false;
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
              Text(
                widget.Qnumber,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                  minWidth: MediaQuery.of(context).size.width * 0.36,
                  maxWidth: MediaQuery.of(context).size.width * 0.45,
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
              const SizedBox(
                width: 8.0,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 35,
                        minWidth: MediaQuery.of(context).size.width * 0.17,
                        maxWidth: MediaQuery.of(context).size.width * 0.17,
                      ),
                      child: MaterialButton(
                        color:
                            optionSelectedYes ? Colors.amber : Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            optionSelectedYes = !optionSelectedYes;
                            optionSelectedNo = false;
                          });
                          SPHM_Data_MAP[widget.DataSetName_nd_YesNo] = "Yes";
                        },
                        child: const Text(
                          "Yes",
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
                        minWidth: MediaQuery.of(context).size.width * 0.15,
                        maxWidth: MediaQuery.of(context).size.width * 0.15,
                      ),
                      child: MaterialButton(
                        color:
                            optionSelectedNo ? Colors.amber : Colors.grey[400],
                        onPressed: () {
                          setState(() {
                            optionSelectedNo = !optionSelectedNo;
                            optionSelectedYes = false;
                          });
                          SPHM_Data_MAP[widget.DataSetName_nd_YesNo] = "No";
                        },
                        child: const Text(
                          "No",
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
            ],
          ),
          TextField(
              maxLength: 78,
              maxLines: 2,
              minLines: 1,
              decoration: InputDecoration(
                labelText: 'Remark',
                hintText: widget.hintText,
                
                labelStyle: TextStyle(color: Colors.black),
              ),
              onChanged: (value) {
                SPHM_Data_MAP[widget.DataSetName_nd_Remark] = value;
              }),
        ],
      ),
    );
  }
}
