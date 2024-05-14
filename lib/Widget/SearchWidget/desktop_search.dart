import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopSearch extends StatefulWidget {
  const DesktopSearch(
      {super.key,
      required this.showAdvancedSearch,
      required this.onAdvanceSearchShow});

  final bool showAdvancedSearch;
  final VoidCallback onAdvanceSearchShow;

  @override
  State<DesktopSearch> createState() => _DesktopSearchState();
}

class _DesktopSearchState extends State<DesktopSearch> {
  var types = <String>['Apartment', 'Villa', 'Land', 'Garage'];
  var status = <String>['Rent', 'Sale'];
  String? _chosenType;
  String? _chosenStatus;

  List<String> advanceOptions = [
    'Air conditioning',
    'Bedding',
    'Heating',
    'Internet',
    'Microwave',
    'Smoking allowed',
    'Terrace',
    'Balcony',
    'Icon',
    'Hi-Fi',
    'Beach',
    'Parking'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 40,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Address, City or ZIP',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Space between elements
              SizedBox(
                height: 40,
                width: 180,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _chosenType,
                  items: types.map<DropdownMenuItem<String>>((type) {
                    return DropdownMenuItem<String>(
                        value: type, child: Text(type));
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
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Space between elements
              SizedBox(
                height: 40,
                width: 180,
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  value: _chosenStatus,
                  items: status.map<DropdownMenuItem<String>>((status) {
                    return DropdownMenuItem<String>(
                        value: status, child: Text(status));
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
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              const SizedBox(
                height: 40,
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '\$',
                    hintText: 'Max Price',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Space between elements
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(3),
                ),
                width: 180,
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          width: 1100,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey, width: 1.0)),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(3),
                bottomLeft: Radius.circular(3)),
          ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: widget.onAdvanceSearchShow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          height: 20,
                          margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100.0)),
                          child:  !widget.showAdvancedSearch ? const Icon(
                             Icons.add ,
                            color: Colors.white,
                            size: 20,
                          ): Image.asset('assets./images/minus-svgrepo-com.png')
                      ),
                      const Text(
                        'More Options',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                if (widget.showAdvancedSearch)
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MoreOptionInput(label: 'Bedrooms'),
                            MoreOptionInput(label: 'Bathrooms'),
                            MoreOptionInput(label: 'Garages'),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20,10, 0, 10 ),
                          child: Text(
                            'Features',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          height: 200,
                          child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: advanceOptions.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 10,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,

                            ),
                            itemBuilder: (context, index) {
                              return Checkboxes(label: advanceOptions[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  )
              ]),
        ),
      ],
    );
  }
}

class MoreOptionInput extends StatelessWidget {
  const MoreOptionInput({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
             Container(
              height: 40,
              width: 300,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
              ),
            )
          ],
        ));
  }
}

class Checkboxes extends StatefulWidget {
  const Checkboxes({super.key, required this.label});
  final String label;
  @override
  State<Checkboxes> createState() => _CheckboxesState();
}

class _CheckboxesState extends State<Checkboxes> {
  bool _isChecked = false;
  void _onChecked(bool? value) {
    setState(() {
      _isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
      child: Row(
        children: [
          Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.blue,
              value: _isChecked,
              onChanged: _onChecked),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              widget.label,
              style: const TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
