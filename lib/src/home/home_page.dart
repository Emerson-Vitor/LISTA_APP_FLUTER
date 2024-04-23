import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:listinha/src/shared/widgets/user_image_button.dart';

import 'widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePage> {
  int ndexButtonSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Listinha'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: UserImageButton(),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text(
                      'Todos',
                      softWrap: false,
                    ),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text(
                      'Pendentes',
                      softWrap: false,
                    ),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text(
                      'Concluídas',
                      softWrap: false,
                    ),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text(
                      'Desativadas',
                      softWrap: false,
                    ),
                  ),
                ],
                onSelectionChanged: (Set<int> values) {
                  setState(() {
                    ndexButtonSegment = values.first;
                  });
                },
                selected: <int>{ndexButtonSegment},
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova lista'),
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
      ),
    );
  }
}
