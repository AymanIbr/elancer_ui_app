import 'dart:developer';

import 'package:elancer_ui_app/models/app_category.dart';
import 'package:elancer_ui_app/models/country.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool _notifications = false ;
  String? _gender;
  RangeValues _priceValues = RangeValues(50, 100);
  late TextEditingController _experienceTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _experienceTextController = TextEditingController();
  }
  @override
  void dispose(){
    _experienceTextController.dispose();
    super.dispose();

  }

  int? _selectedCountryId;


  final List<Country> _countries = <Country> [
    Country(id: 1, title: 'Palestaine'),
    Country(id: 2, title: 'Egypt'),
    Country(id: 3, title: 'Moroco'),
    Country(id: 4, title: 'Gaza'),
    Country(id: 5, title: 'Rafah'),
  ];

  List<String> _experiences = <String> [];

 final List<AppCategory> _categories = <AppCategory>[
    AppCategory(title: 'T-Shirt'),
    AppCategory(title: 'Jackets'),
    AppCategory(title: 'polo'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15 ,vertical: 15),
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
        title: Text('Notifications',style: GoogleFonts.montserrat(),),
        subtitle: Text('Turn Notifications On/Off',style: GoogleFonts.montserrat(),),
        value: _notifications,
        onChanged: (bool Value){
          setState(()=> _notifications = Value);
        }
    ),
        SizedBox(height: 20,),
        Text(
            'Price Range',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),

        RangeSlider(
            values: _priceValues,
            min: 10,
            divisions: 10,
            labels: RangeLabels(_priceValues.start.toString() , _priceValues.end.toString()),
            max: 200,
            onChanged: (RangeValues value){
              setState(()=>_priceValues = value);
            }
        ),

        SizedBox(height: 20,),
        Text(
          'Gender',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),

        Row(
          children: [
            Expanded(
              child: RadioListTile<String>(
                  value: 'M',
                  title: Text('Male',style: GoogleFonts.montserrat(),),
                  groupValue: _gender,
                  onChanged: (String? value){
                    setState(()=>_gender = value);
                  }
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                  value: 'F',
                  title: Text('Female',style: GoogleFonts.montserrat(),),
                  groupValue: _gender,
                  onChanged: (String? value){
                    setState(()=>_gender = value);
                  }
              ),
            ),
          ],
        ),

        SizedBox(height: 20,),
        Text(
          'Categories',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),

        for(AppCategory category in _categories)
        CheckboxListTile(
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7)
          ),
            value: category.checked,
            title: Text(category.title),
            onChanged: (bool? value){
              if(value != null ){
                setState(()=>category.checked = value);
              }
            }
        ),


        SizedBox(height: 20,),
        Text(
          'Country',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),

        DropdownButton <int>(
          value: _selectedCountryId,
          borderRadius: BorderRadius.circular(10),
          dropdownColor: Colors.grey.shade300,
          icon: Icon(Icons.keyboard_arrow_down_sharp),
          hint: Text('Select Country'),
            style: GoogleFonts.montserrat(
              color: Colors.black
            ),
            isExpanded: true,
            items: _countries.map(
                    (Country) =>DropdownMenuItem<int>(
                        child: Text(Country.title),
                      value: Country.id,
                    )
            ) .toList(),
            onChanged: (int? value){
            setState(()=> _selectedCountryId = value);
            }

        ),

        SizedBox(height: 20,),
        Text(
          'Experiences',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),

        TextField(
          controller: _experienceTextController,
          onSubmitted: (String value)=> _performSave(),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.text,
          style: GoogleFonts.montserrat(),
          maxLength: 15,
          decoration: InputDecoration(
            counterText: '',
            hintText: 'Enter experince',
            hintStyle: GoogleFonts.montserrat(),
            prefixIcon: Icon(Icons.work),
            suffixIcon: IconButton(
                onPressed: () => _performSave(),
                icon: Icon(Icons.save),
            ),
          ),
        ),
        Wrap(
          spacing: 10,
          children: _experiences.map((e){
            return Chip(
              deleteIcon: Icon(Icons.close),
              deleteIconColor: Colors.red.shade300,
              onDeleted: ()=>_delete(e),
              backgroundColor: Color(0xFF2B4865),
              labelStyle: GoogleFonts.montserrat(
                color: Color(0xFFE8F9FD)
              ),
              elevation: 5,
              avatar: Icon(Icons.work , size: 18,color: Color(0xFFE8F9FD),),
              label: Text(e),
            );
          }).toList(),
        ),

      ],
    );
  }
  void _performSave(){
    if(_checkData()){
      _save();
    }
  }
  void _delete(String experience){
    setState(()=> _experiences.remove(experience));
  }
  bool _checkData(){
    if(_experienceTextController.text.isNotEmpty){
      return true ;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('Enter required data!'),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }

  void _save(){
    setState(()=> _experiences.add(_experienceTextController.text));
    _experienceTextController.clear();
  }
}
