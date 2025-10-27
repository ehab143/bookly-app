import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBookState> {
  final HomeRepo homeRepo;
  SimilarBooksCubit(this.homeRepo) : super(SimilarBookInitial());

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBookLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBookFailure(failure.errMessage));
      },
      (books) {
        emit(SimilarBookSuccess(books));
      },
    );
  }
}
