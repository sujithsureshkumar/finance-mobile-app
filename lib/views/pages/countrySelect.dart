import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile_app/views/widgets/DefaultAppBar.dart';
import 'package:finance_mobile_app/views/widgets/buldMyDrawer.dart';

class CountrySelect extends StatefulWidget {
  const CountrySelect({Key? key}) : super(key: key);

  @override
  _CountrySelectState createState() => _CountrySelectState();
}

class _CountrySelectState extends State<CountrySelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: buildMyDrawer(),
     appBar: DefaultAppBar(title: "Select Your Place"),
      body: Container(
        margin: EdgeInsets.all(20),
        child: CSCPicker(
          layout: Layout.vertical,
          flagState: CountryFlag.DISABLE,
          onCountryChanged: (country) {},
          onStateChanged: (state) {},
          onCityChanged: (city) {},
          countryDropdownLabel: "*Country",
          stateDropdownLabel: "*State",
          cityDropdownLabel: "*City",
          dropdownDialogRadius: 30,
          searchBarRadius: 30,
        ),
      ),
    );
  }
}