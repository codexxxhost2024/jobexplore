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

  void _initializeFields() {}

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

Map<String, dynamic> createJobsListRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class JobsListRecordDocumentEquality implements Equality<JobsListRecord> {
  const JobsListRecordDocumentEquality();

  @override
  bool equals(JobsListRecord? e1, JobsListRecord? e2) {
    return;
  }

  @override
  int hash(JobsListRecord? e) => const ListEquality().hash([]);

  @override
  bool isValidKey(Object? o) => o is JobsListRecord;
}
