import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchCacheRecord extends FirestoreRecord {
  SearchCacheRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('search_cache');

  static Stream<SearchCacheRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SearchCacheRecord.fromSnapshot(s));

  static Future<SearchCacheRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SearchCacheRecord.fromSnapshot(s));

  static SearchCacheRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SearchCacheRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SearchCacheRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SearchCacheRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SearchCacheRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SearchCacheRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSearchCacheRecordData({
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class SearchCacheRecordDocumentEquality implements Equality<SearchCacheRecord> {
  const SearchCacheRecordDocumentEquality();

  @override
  bool equals(SearchCacheRecord? e1, SearchCacheRecord? e2) {
    return e1?.title == e2?.title;
  }

  @override
  int hash(SearchCacheRecord? e) => const ListEquality().hash([e?.title]);

  @override
  bool isValidKey(Object? o) => o is SearchCacheRecord;
}
