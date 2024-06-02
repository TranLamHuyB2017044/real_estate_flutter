import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AddPropertyWidget/add_property_mobile.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';

class AddPropertyTablet extends StatefulWidget {
  const AddPropertyTablet({super.key});

  @override
  State<AddPropertyTablet> createState() => _AddPropertyTabletState();
}

class _AddPropertyTabletState extends State<AddPropertyTablet> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool isSmallTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 750;
    return ListView(children: [
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: isSmallTablet ? 50 : 120),
          color: const Color(0xfff6f6f6),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const BasicInfoTablet(),
                const SizedBox(height: 35),
                const AddLocationTablet(),
                const SizedBox(height: 35),
                const Gallery(),
                const SizedBox(height: 35),
                const AdditionalInfoTablet(),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              iconColor: const WidgetStatePropertyAll<Color>(
                                  Colors.grey),
                              shape: WidgetStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0),
                              )),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.save, size: 20),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                                  child: Text(
                                    'Save Draft',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                )
                              ],
                            )),
                      ),
                      Container(
                        width: 120,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xff0000ff),
                            borderRadius: BorderRadius.circular(3.0)),
                        child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              const AlertDialog(
                                content: Text(
                                    'Form is not valid. Please check your input.'),
                              );
                            }
                          },
                          child: const Text(
                            'Preview   >',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
      const Footer()
    ]);
  }
}

class BasicInfoTablet extends StatefulWidget {
  const BasicInfoTablet({super.key});

  @override
  State<BasicInfoTablet> createState() => _BasicInfoTabletState();
}

class _BasicInfoTabletState extends State<BasicInfoTablet> {
  var types = <String>['Apartment', 'Villa', 'Land', 'Garage'];
  var status = <String>['Rent', 'Sale'];
  String? _chosenType;
  String? _chosenStatus;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            'Basic Information',
            style: TextStyle(color: Colors.black54, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(flex: 3, child: InputForm(title: 'Title')),
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 1,
              child: InputForm(
                title: 'Price',
                hintText: '\$',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
                flex: 1,
                child: InputForm(
                  title: 'Area',
                  hintText: 'm²',
                )),
            const SizedBox(
              width: 30,
            ),
            const Expanded(flex: 1, child: InputForm(title: 'Rooms')),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 48,
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
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54)),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 48,
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
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50)
      ],
    );
  }
}

class AddLocationTablet extends StatelessWidget {
  const AddLocationTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            'Location',
            style: TextStyle(color: Colors.black54, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                child: Column(
                  children: [
                    InputForm(
                      title: 'Address',
                      hintText: '📍',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InputForm(
                      title: 'City',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InputForm(
                      title: 'State',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InputForm(
                      title: 'ZIP',
                    ),
                    SizedBox(height: 50)
                  ],
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(child: GoogleMapWeb(width: 300, height: 280))
          ],
        ),
      ],
    );
  }
}

class AdditionalInfoTablet extends StatelessWidget {
  const AdditionalInfoTablet({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSmallTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 720;
    List<String> featureOptions = [
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            'Additional Information',
            style: TextStyle(color: Colors.black54, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextFormField(
          decoration: const InputDecoration(
            label: Text(
              'Description',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            // contentPadding: EdgeInsets.all(8),
            focusColor: Colors.grey,
            fillColor: Colors.white,
            filled: true,

            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black54)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          ),
          cursorColor: Colors.black,
          cursorHeight: 20,
          cursorWidth: 0.5,
          maxLines: 3,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'description is required';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(flex: 1, child: InputForm(title: 'Bedrooms')),
            SizedBox(
              width: 30,
            ),
            Expanded(flex: 1, child: InputForm(title: 'BathRooms')),
            SizedBox(width: 30),
            Expanded(flex: 1, child: InputForm(title: 'Garages')),
          ],
        ),
        const SizedBox(height: 30),
        const Text(
          'Features',
          style: TextStyle(color: Colors.black54, fontSize: 14),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: isSmallTablet ? 2 : 3,
              childAspectRatio: 3,
              children:
                  featureOptions.map((item) => Checkboxs(label: item)).toList(),
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
