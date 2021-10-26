
import 'package:flutter/material.dart';
import 'package:flutter_app/Costome_widgets/country_calling_picker/lib/demo_modell.dart';
import 'package:flutter_app/Costome_widgets/country_calling_picker/lib/functions_country_all_picker.dart';
import 'package:flutter_app/Costome_widgets/country_calling_picker/lib/sim_country_code.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

const TextStyle _defaultItemTextStyle = const TextStyle(fontSize: 16);
const TextStyle _defaultSearchInputStyle = const TextStyle(fontSize: 16);
const String _kDefaultSearchHintText = 'Search country name, code';
// const String countryCodePackageName = 'country_all_picker';

class CountryAllPicker extends StatefulWidget {
  final ValueChanged<Country>? onSelected;

  /// [itemTextStyle] can be used to change the TextStyle of the Text in ListItem. Default is [_defaultItemTextStyle]
  final TextStyle itemTextStyle;

  /// [searchInputStyle] can be used to change the TextStyle of the Text in SearchBox. Default is [searchInputStyle]
  final TextStyle searchInputStyle;

  /// [searchInputDecoration] can be used to change the decoration for SearchBox.
  final InputDecoration? searchInputDecoration;

  /// Flag icon size (width). Default set to 32.
  final double flagIconSize;

  ///Can be set to `true` for showing the List Separator. Default set to `false`
  final bool showSeparator;

  ///Can be set to `true` for opening the keyboard automatically. Default set to `false`
  final bool focusSearchBox;

  ///This will change the hint of the search box. Alternatively [searchInputDecoration] can be used to change decoration fully.
  final String searchHintText;

  ///Can be set to `true` for opening the keyboard automatically. Default set to `false`
  final bool searchBar;

  ///Can be set to `true` for opening the keyboard automatically. Default set to `false`
  final bool countryFlag;

  ///Can be set to `true` for opening the keyboard automatically. Default set to `false`
  final bool countryCode;

  ///Can be set to `true` for opening the keyboard automatically. Default set to `false`
  final bool countryName;

  const CountryAllPicker({
    Key? key,
    this.onSelected,
    this.itemTextStyle = _defaultItemTextStyle,
    this.searchInputStyle = _defaultSearchInputStyle,
    this.searchInputDecoration,
    this.searchHintText = _kDefaultSearchHintText,
    this.flagIconSize = 32,
    this.showSeparator = false,
    this.focusSearchBox = false,
    this.searchBar = true,
    this.countryFlag = true,
    this.countryCode = true,
    this.countryName = true,
  }) : super(key: key);

  @override
  @override
  _CountryAllPickerState createState() => _CountryAllPickerState();
}

class _CountryAllPickerState extends State<CountryAllPicker> {
  List<Country> _list = [];
  List<Country> _filteredList = [];
  TextEditingController _controller = new TextEditingController();
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;
  Country? _currentCountry;

  void _onSearch(text) {
    if (text == null || text.isEmpty) {
      setState(() {
        _filteredList.clear();
        _filteredList.addAll(_list);
      });
    } else {
      setState(() {
        _filteredList = _list
            .where((element) =>
                element.name
                    .toLowerCase()
                    .contains(text.toString().toLowerCase()) ||
                element.callingCode
                    .toLowerCase()
                    .contains(text.toString().toLowerCase()) ||
                element.countryCode
                    .toLowerCase()
                    .startsWith(text.toString().toLowerCase()))
            .map((e) => e)
            .toList();
      });
    }
  }

  @override
  void initState() {
    _scrollController.addListener(() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    });
    loadList();
    super.initState();
  }

  void loadList() async {
    setState(() {
      _isLoading = true;
    });
    _list = await getCountries(context);
    try {
      String? code = await FlutterSimCountryCode.simCountryCode;
      _currentCountry =
          _list.firstWhere((element) => element.countryCode == code);
      final country = _currentCountry;
      if (country != null) {
        _list.removeWhere(
            (element) => element.callingCode == country.callingCode);
        _list.insert(0, country);
      }
    } catch (e) {} finally {
      setState(() {
        _filteredList = _list.map((e) => e).toList();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        widget.searchBar
            ? Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  style: widget.searchInputStyle,
                  autofocus: widget.focusSearchBox,
                  decoration: widget.searchInputDecoration ??
                      InputDecoration(
                        suffixIcon: Visibility(
                          visible: _controller.text.isNotEmpty,
                          child: InkWell(
                            child: Icon(Icons.clear),
                            onTap: () => setState(() {
                              _controller.clear();
                              _filteredList.clear();
                              _filteredList.addAll(_list);
                            }),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding: EdgeInsets.only(
                            left: 16, right: 16, top: 8, bottom: 8),
                        hintText: widget.searchHintText,
                      ),
                  textInputAction: TextInputAction.done,
                  controller: _controller,
                  onChanged: _onSearch,
                ),
              )
            : Container(),
        SizedBox(
          height: widget.searchBar ? 10 : 0,
        ),
        Expanded(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  padding: EdgeInsets.only(top: 5),
                  controller: _scrollController,
                  itemCount: _filteredList.length,
                  separatorBuilder: (_, index) =>
                      widget.showSeparator ? Divider() : Container(),
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {
                        widget.onSelected?.call(_filteredList[index]);
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: 15, top: 15, left: 15, right: 15),
                        child: Row(
                          children: <Widget>[
                            widget.countryFlag
                                ? Image.asset(
                                    _filteredList[index].flag,
                                    width: widget.flagIconSize,
                                  )
                                : Container(),
                            SizedBox(
                              width: widget.countryFlag ? 13 : 0,
                            ),
                            widget.countryCode
                                ? Text(AppLocalizations.of(
                                    '${_filteredList[index].callingCode}'),
                                    style: widget.itemTextStyle,
                                  )
                                : Container(),
                            SizedBox(
                              width: widget.countryCode ? 7 : 0,
                            ),
                            widget.countryName
                                ? Text(
                                  AppLocalizations.of(
                                    '${_filteredList[index].name}'),
                                    style: widget.itemTextStyle,
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }
}
