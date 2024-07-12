import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/obat_model.dart';
// import 'package:flutterlist/Obat obat .dart';

class FirebaseService {
  static const COLLECTION_OBAT = 'obat';

  final firestore = FirebaseFirestore.instance;
  late final CollectionReference useRef;

  FirebaseService() {
    useRef = firestore.collection(COLLECTION_OBAT);
  }

  Stream<QuerySnapshot<Object?>> ambilData() {
    return useRef.snapshots();
  }

  Future<bool> tambah(Obat obat) async {
    try {
      DocumentReference documentReference = useRef.doc(obat.nama);
      documentReference.set(obat.toJson());
      return true;
    } catch (e) {
      print('Errornya: $e');
      return false;
    }
  }

  void hapus(Obat obat) {
    DocumentReference documentReference = useRef.doc(obat.nama);
    documentReference.delete();
  }

  void ubah(Obat obat) {
    DocumentReference documentReference = useRef.doc(obat.nama);
    documentReference.update(obat.toJson());
  }
}
