import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (index) {
        if (index == 1) {
          Navigator.pop(context);
          Navigator.of(context).pushNamed('/config');
        }
      },
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 28, right: 16, left: 16, bottom: 16),
          child: Text('Opçôes', style: Theme.of(context).textTheme.titleSmall),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: Row(
            children: [
              const Text('Sincronizar'),
              const SizedBox(
                width: 28,
              ),
              Text(
                '12/12/2012 às 12:12',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
        ),
      ],
    );
  }
}
