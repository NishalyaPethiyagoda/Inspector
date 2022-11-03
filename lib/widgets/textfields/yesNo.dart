import 'package:flutter/material.dart';
import 'package:project/app_tree/data/SPHM/SPHMidwifeDATA.dart';
import 'package:project/widgets/textfields/temo.dart';

class YesNo extends StatefulWidget {
  final String DataSetName_nd_vari;
  final String question;
  final String qNumber;

  YesNo(
      {Key? key,
      required this.DataSetName_nd_vari,
      required this.question,
      required this.qNumber,
      })
      : super(key: key);

  @override
  State<YesNo> createState() => _YesNoState();
}

class _YesNoState extends State<YesNo> {
  bool optionSelectedYes = false;
  bool optionSelectedNo = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
      constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        //  borderRadius: const BorderRadius.all(Radius.circular(5)          ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.qNumber,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            //padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            constraints: BoxConstraints(
              maxHeight: double.infinity,
              minWidth: MediaQuery.of(context).size.width * 0.45,
              maxWidth: MediaQuery.of(context).size.width * 0.46,
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
                    minWidth: MediaQuery.of(context).size.width * 0.18,
                    maxWidth: MediaQuery.of(context).size.width * 0.18,
                  ),
                  child: MaterialButton(
                    
                    color: optionSelectedYes ? Colors.amber : Colors.grey[400],
                    onPressed: () {
                      setState(() {
                        optionSelectedYes = !optionSelectedYes;
                        optionSelectedNo = false;
                        //widget.data1 = "yes";
                        
                      });
                      SPHM_Data_MAP[widget.DataSetName_nd_vari] = "Yes";
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
                    minWidth: MediaQuery.of(context).size.width * 0.18,
                    maxWidth: MediaQuery.of(context).size.width * 0.18,
                  ),
                  child: MaterialButton(
                    color: optionSelectedNo ? Colors.amber : Colors.grey[400],
                    onPressed: () {
                      setState(() {
                        optionSelectedNo = !optionSelectedNo;
                        optionSelectedYes = false;
                        
                      });
                      SPHM_Data_MAP[widget.DataSetName_nd_vari] = "No";
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
          // Container(
          //   padding: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
          //   child: const Text("(Yes/No) :  ")
          // ),
          // Container(
          //   constraints: BoxConstraints(
          //     maxHeight: double.infinity,
          //     maxWidth: MediaQuery.of(context).size.width * 0.15,
          //   ),

          //   child: TextFormField(
          //       decoration: const InputDecoration(
          //         labelText: null,
          //         labelStyle: TextStyle(color: Colors.black),
          //       ),
          //       validator: (value) {
          //         if (value == null || value.isEmpty) {
          //           return '';
          //         }
          //       },
          //       onSaved: (value) {
          //         widget.assignTo = value!;
          //       }),
          // ),
        ],
      ),
    );
  }
}
