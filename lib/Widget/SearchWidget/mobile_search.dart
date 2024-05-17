import 'package:flutter/material.dart';

class MobileSearch extends StatefulWidget {
  const MobileSearch(
      {super.key,

      required this.widthContainer});



  final double widthContainer;

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<MobileSearch> {
  var types = <String>['Apartment', 'Villa', 'Land', 'Garage'];
  var status = <String>['Rent', 'Sale'];
  String? _chosenType;
  String? _chosenStatus;
  List<String> advanceOptions = [
    'Air conditioning',
    'Beding',
    'Heating',
    'Internet',
    'Microwave',
    'Smoking allowed',
    'Terrace',
    'Valcony',
    'Icon',
    'Hi-Fi',
    'Beach',
    'Parking'
  ];

  bool _isAdvanceSearchOpen = false;

  void _toggleShowAdvanceSearch() {
    setState(() {
      _isAdvanceSearchOpen = !_isAdvanceSearchOpen;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widget.widthContainer,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow:  [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(1.0,2.0)
                )
              ]),
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
                height: 32,
                child: DropdownButtonFormField(
                  isExpanded: true, // make icon spacebetween
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
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                height: 32,
                child: DropdownButtonFormField(
                  isExpanded: true, // make icon spacebetween
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
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10)),
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
                width: widget.widthContainer *0.97,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(3)),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ))),
            ],
          ),
        ),
        Container(
          width: widget.widthContainer,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              color: Colors.white70,
              border: Border(top: BorderSide(color: Colors.grey, width: 1.0)),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(3),
                  bottomLeft: Radius.circular(3)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(1.0,2.0)
                )
              ]),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: _toggleShowAdvanceSearch,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100.0)),
                          child: !_isAdvanceSearchOpen ? const Icon(
                            Icons.add ,
                            color: Colors.white,
                            size: 20,
                          ): Image.asset('assets./images/minus-svgrepo-com.png')),
                      const Text(
                        'More Options',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                if (_isAdvanceSearchOpen)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    child: Column(
                      children: [
                        const moreOptionInput(label: 'Bedrooms'),
                        const moreOptionInput(label: 'Bathrooms'),
                        const moreOptionInput(label: 'Garages'),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Features',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        ...advanceOptions.map((item) => Checkboxs(label: item)),
                        const SizedBox(height: 20)
                      ],
                    ),
                  )
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
              ),
            )
          ],
        ));
  }
}

class Checkboxs extends StatefulWidget {
  const Checkboxs({super.key, required this.label});
  final String label;
  @override
  State<Checkboxs> createState() => _CheckboxsState();
}

class _CheckboxsState extends State<Checkboxs> {
  bool _isChecked = false;
  void _onChecked(bool? value) {
    setState(() {
      _isChecked = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
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
        )
      ],
    );
  }
}
