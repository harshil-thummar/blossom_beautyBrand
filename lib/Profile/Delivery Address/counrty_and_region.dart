
import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/country_calling_picker/lib/country_all_picker_.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

class CounrtyAndRegion extends StatefulWidget {
  const CounrtyAndRegion({Key? key}) : super(key: key);

  @override
  _CounrtyAndRegionState createState() => _CounrtyAndRegionState();
}

class _CounrtyAndRegionState extends State<CounrtyAndRegion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        title: Text(AppLocalizations.of('Counrty/Region')),
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('Click CounrtyAndRegion');
        },
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 15),
              Expanded(
                child: CountryAllPicker(
                  countryFlag: false,
                  countryCode: false,
                  searchInputDecoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Theme.of(context).dividerColor)),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Type name here",
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  onSelected: (country) => Navigator.pop(context, country),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
