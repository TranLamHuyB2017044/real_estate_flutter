import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/mobile_customer.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveCustomer extends StatefulWidget {
  const ResponsiveCustomer({super.key});

  @override
  State<ResponsiveCustomer> createState() => _ResponsiveCustomerState();
}

class _ResponsiveCustomerState extends State<ResponsiveCustomer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileCustomer(),
    );
  }
}
