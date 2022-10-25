import 'package:flutter/material.dart';

extension DefaultPadding on Widget {
  get defaultPadding =>
      Padding(padding: const EdgeInsets.all(16.0), child: this);
}
