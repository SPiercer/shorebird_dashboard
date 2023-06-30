import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppProvider extends Cubit<AppState> with ChangeNotifier {
  AppProvider() : super(AppInitial());

  @override
  void emit(AppState state) {
    super.emit(state);
    notifyListeners();
  }
}
