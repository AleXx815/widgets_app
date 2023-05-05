import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// este provider es para valores inmutables
final colorListProvider = Provider((ref) => colorList);

// el stateprovider es para mantener una pieza de estado
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

final selectedIndexColorProvider = StateProvider((ref) => 3);

// el statenorifierprovider es para lo mismo que el stateprovider pero para objetos más elaborados
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // El STATE = el estado = new apptheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
