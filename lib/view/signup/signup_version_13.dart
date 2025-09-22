import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/images.dart';

class SignUpVersion13 extends StatefulWidget {
  const SignUpVersion13({super.key});

  @override
  State<SignUpVersion13> createState() => _SignUpVersion13State();
}

class _SignUpVersion13State extends State<SignUpVersion13> {
  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  DateTime? _selectedDate;
  String _selectedCountryCode = '+1';
  bool _obscurePassword = true;
  bool isRememberMe = false;

  // Method to open date picker
  void _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _birthDateController.text =
            "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,

      children: [
        SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),

        Text('Email', style: TextStyle(fontSize: 14, color: Colors.grey)),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Date of Birth',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        TextField(
          controller: _birthDateController,
          readOnly: true,
          decoration: InputDecoration(
            hintText: 'DD/MM/YYYY',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () => _selectDate(context),
            ),
          ),
        ),
        SizedBox(height: 20),

        // Phone Number Input
        Text(
          'Phone Number',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            // Country Code Picker
            Container(
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(6),
              ),
              child: CountryCodePicker(
                onChanged: (country) {
                  setState(() {
                    _selectedCountryCode = country.dialCode!;
                  });
                },
                initialSelection: 'US',
                // Default country (US)
                showFlag: true,
                // Show flag next to the country code
                showDropDownButton: true,
                // Show the dropdown button for selecting country
                padding: EdgeInsets.zero,
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
            // Phone Number Input
            Expanded(
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter phone number',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                ),
              ),
            ),
          ],
        ),
        Text('Password', style: TextStyle(fontSize: 14, color: Colors.grey)),
        TextField(
          obscureText: _obscurePassword,
          cursorColor: Colors.blue,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Log In'),
        ),
      ],
    );
  }
}
