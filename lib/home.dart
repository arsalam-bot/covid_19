import 'package:covid_19/providers/corona_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './components/world.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
          child: Container(
            child: FutureBuilder(
                future: Provider.of<CoronaProvider>(context, listen: false)
                    .getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Consumer<CoronaProvider>(builder: (context, data, _) {
                    return Column(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: World(
                              data: data,
                            ))
                      ],
                    );
                  });
                }),
          ),
          onRefresh: () =>
              Provider.of<CoronaProvider>(context, listen: false).getData()),
    );
  }
}
