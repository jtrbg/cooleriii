import 'package:cooleriii/bluetooth/bluetooth.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Connections'),
            tiles: <SettingsTile>[
              SettingsTile(
                  leading: const Icon(Icons.bluetooth),
                  title: const Text('Bluetooth'),
                  onPressed: (BuildContext context) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FindDevicesScreen()
                      )
                    );},
              ),
              SettingsTile(
                leading: const Icon(
                  Icons.location_on_sharp,
                ),
                title: const Text('Location'),
                description: const Text('<location settings chosen>'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Fine Tuning'),
            tiles: <SettingsTile>[
              SettingsTile(
                leading: const Icon(Icons.edit_location_alt),
                title: const Text('Software'),
              ),
              SettingsTile(
                leading: const Icon(Icons.electric_car),
                title: const Text('Hardware'),
              ),
              SettingsTile(
                leading: const Icon(Icons.videogame_asset),
                title: const Text('Controller'),
                description: const Text('<controller chosen>'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Other'),
            tiles: <SettingsTile>[
              SettingsTile(
                leading: const Icon(Icons.palette),
                title: const Text('Theme'),
              ),
              SettingsTile(
                title: const Text('Information'),
              ),

            ],
          ),
        ],
      );
  }


}
