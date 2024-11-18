import 'package:hive_flutter/adapters.dart';
import '../../Featuers/home/domain/entities/book_entity.dart';
import '../../constants.dart';

void saveBooksData(List<BookEntity> books ,String boxName) {
  var box = Hive.box(kFeaturedBox);
  box.addAll(books);
}