import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsListRecord extends FirestoreRecord {
  JobsListRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _company = snapshotData['company'] as String?;
    _industry = snapshotData['industry'] as String?;
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs_list');

  static Stream<JobsListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsListRecord.fromSnapshot(s));

  static Future<JobsListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsListRecord.fromSnapshot(s));

  static JobsListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobsListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsListRecordData({
  String? name,
  String? company,
  String? industry,
  String? description,
  String? location,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'company': company,
      'industry': industry,
      'description': description,
      'location': location,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsListRecordDocumentEquality implements Equality<JobsListRecord> {
  const JobsListRecordDocumentEquality();

  @override
  bool equals(JobsListRecord? e1, JobsListRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.company == e2?.company &&
        e1?.industry == e2?.industry &&
        e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.date == e2?.date;
  }

  @override
  int hash(JobsListRecord? e) => const ListEquality().hash(
      [e?.name, e?.company, e?.industry, e?.description, e?.location, e?.date]);

  @override
  bool isValidKey(Object? o) => o is JobsListRecord;
}
