import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeMode = StateProvider<ThemeMode>((ref) => ThemeMode.light);
