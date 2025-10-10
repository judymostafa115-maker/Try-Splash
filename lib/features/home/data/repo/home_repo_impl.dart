import 'package:dartz/dartz.dart';
import 'package:trysplash/core/network/api_service.dart';
import 'package:trysplash/features/home/data/model/book_model.dart';
import 'package:trysplash/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<String, List<BookModel>>> fetchAllBooks() async {
    var json = await apiService.get(endpoint: "books/v1/volumes?q=programming");
    try {
      List<BookModel> books =[];
      
      for(var book in json["items"]){
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    }  catch (e) {
      return left(e.toString());
      // TODO
    }

  }

  @override
  Future<Either<String, List<BookModel>>> fetchFreeBooks() async{
    var json = await apiService.get(endpoint: "books/v1/volumes?Filtering=free-ebooks&Sorting=newest&q=programming");
    try {
      List<BookModel> books =[];

      for(var book in json["items"]){
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    }  catch (e) {
      return left(e.toString());
      // TODO
    }

  }

}