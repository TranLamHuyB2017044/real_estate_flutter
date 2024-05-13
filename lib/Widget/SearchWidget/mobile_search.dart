import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class MobileSearch extends StatefulWidget {
  const MobileSearch({super.key, required this.showAdvancedSearch, required this.onAdvanceSearchShow});
  final bool showAdvancedSearch ;
  final VoidCallback onAdvanceSearchShow;


  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<MobileSearch> {

  var types = <String>['Apartment', 'Villa', 'Land', 'Garage'];
  var status = <String>['Rent', 'Sale'];
  String? _chosenType;
  String? _chosenStatus;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          margin: const EdgeInsets.fromLTRB(0,20,0,0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1, -1),
                spreadRadius: 0,
                blurRadius: 10
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 32,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Address, City or ZIP',
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 500,
                height: 32,
                child: DropdownButtonFormField(
                  isExpanded: true, // make icon spacebetween
                  value: _chosenType,
                  items: types.map<DropdownMenuItem<String>>((type) {
                    return DropdownMenuItem<String>(value: type, child: Text(type));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _chosenType = newValue;
                    });
                  },
                  hint: const Text(
                    'Type',
                    style: TextStyle(color: Colors.black54),
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10)
                  ),

                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0,10),
                width: 500,
                height: 32,
                child: DropdownButtonFormField(
                  isExpanded: true, // make icon spacebetween
                  value: _chosenStatus,
                  items: status.map<DropdownMenuItem<String>>((status) {
                    return DropdownMenuItem<String>(value: status, child: Text(status));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _chosenStatus = newValue;
                    });
                  },
                  hint: const Text(
                    'Status',
                    style: TextStyle(color: Colors.black54),
                  ),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10)
                  ),

                ),
              ),
              const SizedBox(
                height: 32,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '\$',
                      hintText: 'Max Price',
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(3)
                  ),
                  width: 500,
                  child: TextButton(onPressed: (){}, child: const Text('Search', style: TextStyle(color: Colors.white),))),
            ],
          ),
        ),
        Container(
          width: 500,
          padding: const  EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: Colors.white70,
            border: Border(top: BorderSide(color: Colors.grey, width: 1.0)),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(3), bottomLeft:Radius.circular(3)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 13,
                  spreadRadius: -2,
                  offset: Offset(2, 6)),
            ]
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {  },
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              width: 20,
                              height: 20,
                              margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                              decoration:  BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(100.0)
                              ),
                              child: const Icon(Icons.add, color: Colors.white, size: 20,)),
                          const Text('More Options', style:  TextStyle(fontSize: 14,),)

                        ],
                      ),
                    ),
                    const moreOptionInput(label: 'Bedrooms'),
                    const moreOptionInput(label: 'Bathrooms'),
                    const moreOptionInput(label: 'Garages')
                    
                  ],
                ),
          ),
        )
      ],
    );
  }
}


class moreOptionInput extends StatelessWidget {
  const moreOptionInput({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 32,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
              ),
            )
          ],
        )
    );
  }
}
