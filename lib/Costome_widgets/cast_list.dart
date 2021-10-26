import 'package:flutter/material.dart';
import 'package:flutter_app/Language/appLocalizations.dart';

class Actor {
  const Actor(this.name, this.initials);
  final String name;
  final String initials;
}

class PopularSearchList extends StatefulWidget {
  const PopularSearchList({Key? key}) : super(key: key);

  @override
  _PopularSearchListState createState() => _PopularSearchListState();
}

class _PopularSearchListState extends State<PopularSearchList> {
  final List<Actor> _cast = <Actor>[
    Actor(AppLocalizations.of('Herbivore'), AppLocalizations.of('HV')),
    Actor(AppLocalizations.of('Cinema Srcrets'), AppLocalizations.of('CS')),
    Actor(AppLocalizations.of('Hair'), AppLocalizations.of('HR')),
    Actor(AppLocalizations.of('Dyson'), AppLocalizations.of('DN')),
    Actor(AppLocalizations.of('Eyelash Tool'), AppLocalizations.of('ET')),
    Actor(AppLocalizations.of('Blender'), AppLocalizations.of('BD')),
  ];

  Iterable<Widget> get actorWidgets sync* {
    for (final Actor actor in _cast) {
      yield Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 18, 0),
        child: Chip(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          shape: StadiumBorder(
            side: BorderSide(
              color: Theme.of(context).dividerColor,
            ),
          ),
          elevation: 4,
          label: Text(actor.name),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: actorWidgets.toList(),
    );
  }
}
