import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

class AddPropertyMobile extends StatefulWidget {
  const AddPropertyMobile({super.key});

  @override
  State<AddPropertyMobile> createState() => _AddPropertyMobileState();
}

class _AddPropertyMobileState extends State<AddPropertyMobile> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: const Color(0xfff6f6f6),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const BasicInfo(),
                const AddLocation(),
                const Gallery(),
                const AdditionalInfo(),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 143,
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
                                Text(
                                  'Save Draft',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xff0000ff),
                            borderRadius: BorderRadius.circular(3.0)),
                        width: 120,
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
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
      const Footer()
    ]);
  }
}

class BasicInfo extends StatefulWidget {
  const BasicInfo({super.key});

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
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
        const InputForm(title: 'Title'),
        const SizedBox(
          height: 35,
        ),
        const InputForm(
          title: 'Price',
          hintText: '\$',
        ),
        const SizedBox(
          height: 30,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 1,
                child: InputForm(
                  title: 'Area',
                  hintText: 'm²',
                )),
            SizedBox(
              width: 30,
            ),
            Expanded(flex: 1, child: InputForm(title: 'Rooms')),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
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
                contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54)),
                fillColor: Colors.white,
                filled: true),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
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
        const SizedBox(height: 50)
      ],
    );
  }
}

class AddLocation extends StatelessWidget {
  const AddLocation({super.key});

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
        const InputForm(
          title: 'Address',
          hintText: '📍',
        ),
        const SizedBox(
          height: 30,
        ),
        const InputForm(
          title: 'City',
        ),
        const SizedBox(
          height: 30,
        ),
        const InputForm(
          title: 'State',
        ),
        const SizedBox(
          height: 30,
        ),
        const InputForm(
          title: 'ZIP',
        ),
        const SizedBox(height: 50)
      ],
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({super.key, required this.title, this.hintText});
  final String title;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(
          title,
          style: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        // contentPadding: EdgeInsets.all(8),
        focusColor: Colors.grey,
        fillColor: Colors.white,
        filled: true,

        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      ),
      cursorColor: Colors.black,
      cursorHeight: 20,
      cursorWidth: 0.5,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$title is required';
        }
        return null;
      },
    );
  }
}

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  Uint8List? image;
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
            'Gallery',
            style: TextStyle(color: Colors.black54, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        if (image != null)
          Image.memory(
            image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () async {
            Uint8List? imageFile = await ImagePickerWeb.getImageAsBytes();

            if (imageFile != null) {
              setState(() {
                image = imageFile;
              });
            }
          },
          child: DottedBorder(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            color: Colors.black,
            strokeWidth: 1,
            dashPattern: const [6, 3, 0, 3],
            child: SizedBox(
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100.0)),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      )),
                  const Text(
                    'Click or drag images here',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
            ),
          ).showCursorOnHover,
        ),
        const SizedBox(height: 50)
      ],
    );
  }
}

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
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
        const InputForm(title: 'Bedrooms'),
        const SizedBox(
          height: 30,
        ),
        const InputForm(title: 'BathRooms'),
        const SizedBox(height: 30),
        const InputForm(title: 'Garages'),
        const SizedBox(height: 30),
        const Text(
          'Features',
          style: TextStyle(color: Colors.black54, fontSize: 14),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 10),
        ...featureOptions.map((item) => Checkboxs(label: item)),
        const SizedBox(height: 30),
      ],
    );
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
