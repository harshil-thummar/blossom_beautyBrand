import 'package:flutter/material.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({Key? key}) : super(key: key);

  @override
  _SizeScreenState createState() => _SizeScreenState();
}

class _SizeScreenState extends State<SizeScreen> {
  List<String> currencyList = ['US', 'Euro', 'UK', 'CM'];
  int _selectedIndex = 0;
  _onSelected(int index) {
    setState(() => _selectedIndex = index);
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
            'Size',
            style: TextStyle(color: Theme.of(context).iconTheme.color),
          ),
          elevation: 0,
        ),
        body: Container(
          color: Theme.of(context).dividerColor,
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  itemCount: currencyList.length,
                  separatorBuilder: (__, index) {
                    return Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Divider(
                          height: 0,
                          thickness: 2,
                        ),
                      ),
                    );
                  },
                  itemBuilder: (__, index) {
                    return InkWell(
                      onTap: () {
                        _onSelected(index);
                      },
                      child: Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        height: 55,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(currencyList[index]),
                                _selectedIndex == index
                                    ? Icon(
                                        Icons.done,
                                        color: Theme.of(context).primaryColor,
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
