import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/country_calling_picker/lib/demo_modell.dart';
import 'package:flutter_app/Costome_widgets/country_calling_picker/lib/functions_country_all_picker.dart';

import 'counrty_and_region.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({Key? key}) : super(key: key);

  @override
  _NewAddressState createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  late Country _selectedCountry;

  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(
          'Add new Address',
          style: TextStyle(color: Theme.of(context).iconTheme.color),
        ),
        elevation: 0,
      ),
      // ignore: unnecessary_null_comparison
      body: _selectedCountry.countryCode != null && _selectedCountry.countryCode != ""
          ? GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                print('Click NewAddress');
              },
              child: Container(
                color: Theme.of(context).dividerColor,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Your Counrty',
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 13),
                            ),
                            SizedBox(height: 15),
                            InkWell(
                              onTap: () {
                                _countryAllPicker();
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Theme.of(context).dividerColor,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      // ignore: unnecessary_null_comparison
                                      _selectedCountry.name != null && _selectedCountry.name != "" ? _selectedCountry.name : "",
                                      style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Theme.of(context).iconTheme.color,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Addsess',
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 14),
                            ),
                            SizedBox(height: 15),
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                    labelText: 'Type your location or use pin',
                                    labelStyle: TextStyle(fontSize: 14),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(15)),
                                        borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(13),
                                      ),
                                    ),
                                    suffixIcon: Icon(Icons.location_on_outlined)),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Name of Consignee',
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 13),
                            ),
                            SizedBox(height: 15),
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Type Name',
                                  labelStyle: TextStyle(fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(13),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Phone Number',
                              style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 13),
                            ),
                            SizedBox(height: 15),
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Type Number',
                                  labelStyle: TextStyle(fontSize: 14),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(color: Theme.of(context).dividerColor)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(13),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : SizedBox(),
    );
  }

  void _countryAllPicker() async {
    final country = await Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return CounrtyAndRegion();
    }));
    if (country != null) {
      setState(() {
        _selectedCountry = country;
      });
    }
  }
}
