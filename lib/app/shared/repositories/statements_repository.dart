import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:efinances/app/shared/models/statements_model.dart';

class StatementsRepository extends Disposable {

  
  Future<List<StatementsModel>> getListStatements() async {
    final databaseReference = Firestore.instance;  

    List<StatementsModel> list = [];
    
    DocumentSnapshot response = await databaseReference
        .collection('statements')
        .document()
        .get();

    response.data.forEach((_, item) {
      list.add(StatementsModel.fromJson(item));
    });
    print(list[0].type);
    return list;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
