import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashBoardRecord extends FirestoreRecord {
  DashBoardRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "SelectedPage" field.
  String? _selectedPage;
  String get selectedPage => _selectedPage ?? '';
  bool hasSelectedPage() => _selectedPage != null;

  void _initializeFields() {
    _selectedPage = snapshotData['SelectedPage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DashBoard');

  static Stream<DashBoardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DashBoardRecord.fromSnapshot(s));

  static Future<DashBoardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DashBoardRecord.fromSnapshot(s));

  static DashBoardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DashBoardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DashBoardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DashBoardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DashBoardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DashBoardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDashBoardRecordData({
  String? selectedPage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SelectedPage': selectedPage,
    }.withoutNulls,
  );

  return firestoreData;
}

class DashBoardRecordDocumentEquality implements Equality<DashBoardRecord> {
  const DashBoardRecordDocumentEquality();

  @override
  bool equals(DashBoardRecord? e1, DashBoardRecord? e2) {
    return e1?.selectedPage == e2?.selectedPage;
  }

  @override
  int hash(DashBoardRecord? e) => const ListEquality().hash([e?.selectedPage]);

  @override
  bool isValidKey(Object? o) => o is DashBoardRecord;
}
