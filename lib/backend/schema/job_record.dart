import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobRecord extends FirestoreRecord {
  JobRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "salary" field.
  double? _salary;
  double get salary => _salary ?? 0.0;
  bool hasSalary() => _salary != null;

  // "postedOn" field.
  DateTime? _postedOn;
  DateTime? get postedOn => _postedOn;
  bool hasPostedOn() => _postedOn != null;

  // "updatedOn" field.
  DateTime? _updatedOn;
  DateTime? get updatedOn => _updatedOn;
  bool hasUpdatedOn() => _updatedOn != null;

  // "categories" field.
  List<DocumentReference>? _categories;
  List<DocumentReference> get categories => _categories ?? const [];
  bool hasCategories() => _categories != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _address = snapshotData['address'] as String?;
    _company = snapshotData['company'] as String?;
    _salary = castToType<double>(snapshotData['salary']);
    _postedOn = snapshotData['postedOn'] as DateTime?;
    _updatedOn = snapshotData['updatedOn'] as DateTime?;
    _categories = getDataList(snapshotData['categories']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('job')
          : FirebaseFirestore.instance.collectionGroup('job');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('job').doc(id);

  static Stream<JobRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRecord.fromSnapshot(s));

  static Future<JobRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRecord.fromSnapshot(s));

  static JobRecord fromSnapshot(DocumentSnapshot snapshot) => JobRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRecordData({
  String? title,
  String? description,
  String? address,
  String? company,
  double? salary,
  DateTime? postedOn,
  DateTime? updatedOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'address': address,
      'company': company,
      'salary': salary,
      'postedOn': postedOn,
      'updatedOn': updatedOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRecordDocumentEquality implements Equality<JobRecord> {
  const JobRecordDocumentEquality();

  @override
  bool equals(JobRecord? e1, JobRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.address == e2?.address &&
        e1?.company == e2?.company &&
        e1?.salary == e2?.salary &&
        e1?.postedOn == e2?.postedOn &&
        e1?.updatedOn == e2?.updatedOn &&
        listEquality.equals(e1?.categories, e2?.categories);
  }

  @override
  int hash(JobRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.address,
        e?.company,
        e?.salary,
        e?.postedOn,
        e?.updatedOn,
        e?.categories
      ]);

  @override
  bool isValidKey(Object? o) => o is JobRecord;
}
