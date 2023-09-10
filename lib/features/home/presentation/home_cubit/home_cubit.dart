import 'package:api_exam/features/home/data/repository/home_repo.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(HomeInitial());

  final HomeRepository homeRepository;

  //! Get Method
  List<dynamic> cats = [];
  void getAllCats() async {
    emit(GetCatsLoadingState());
    final response = await homeRepository.getCats();
    response.fold(
      (l) => emit(GetCatsErrorState()),
      (r) {
        cats = r;
        emit(GetCatsSuccessState());
      },
    );
  }
}
