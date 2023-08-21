import 'package:alaska/alaska/sizes/size_groups.dart';

class AlaskaSizes {
  final BorderGroup border;
  final RadiusGroup radius;
  final SpacingGroup spacing;

  const AlaskaSizes._({
    required this.border,
    required this.radius,
    required this.spacing,
  });

  static AlaskaSizes instance = const AlaskaSizes._(
    border: BorderGroup(
      x400: 1.0,
      x500: 2.0,
    ),
    radius: RadiusGroup(
      x100: 4.00,
      x200: 8.00,
      x300: 12.00,
      x400: 16.00,
      max: 1000.00,
    ),
    spacing: SpacingGroup(
      x150: 4.00,
      x300: 8.00,
      x350: 12.00,
      x400: 16.00,
      x450: 20.00,
      x500: 24.00,
      x600: 32.00,
      x700: 40.00,
      x800: 48.00,
      x900: 56.00,
      x1000: 64.00,
      x1100: 72.00,
      x1200: 80.00,
      x1400: 96.00,
      x1800: 128.00,
    ),
  );
}
