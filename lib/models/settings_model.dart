import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsModel {
  final String iconSvg;
  final String title;
  final bool? icon;
  const SettingsModel({
    required this.iconSvg,
    required this.title,
    this.icon,
  });
}

List<SettingsModel> settingsList = [
  const SettingsModel(iconSvg: "bookmark", title: "General"),
  const SettingsModel(iconSvg: "lamp", title: "Dark Mode", icon: false),
  const SettingsModel(iconSvg: "key", title: "Security"),
  const SettingsModel(iconSvg: "bell1", title: "Notifications"),
  const SettingsModel(iconSvg: "sound", title: "Sounds", icon: true),
  const SettingsModel(iconSvg: "pause", title: "Vacation Mode", icon: false),
];
List<SettingsModel> aboutList = [
  const SettingsModel(iconSvg: "star", title: "Rate Routiner"),
  const SettingsModel(iconSvg: "share", title: "Share with Friends"),
  const SettingsModel(iconSvg: "info", title: "About Us"),
  const SettingsModel(iconSvg: "chat", title: "Support"),
];
