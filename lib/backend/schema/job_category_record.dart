import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobCategoryRecord extends FirestoreRecord {
  JobCategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "jobs_available" field.
  int? _jobsAvailable;
  int get jobsAvailable => _jobsAvailable ?? 0;
  bool hasJobsAvailable() => _jobsAvailable != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _jobsAvailable = castToType<int>(snapshotData['jobs_available']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job_category');

  static Stream<JobCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobCategoryRecord.fromSnapshot(s));

  static Future<JobCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobCategoryRecord.fromSnapshot(s));

  static JobCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobCategoryRecordData({
  String? title,
  int? jobsAvailable,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'jobs_available': jobsAvailable,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobCategoryRecordDocumentEquality implements Equality<JobCategoryRecord> {
  const JobCategoryRecordDocumentEquality();

  @override
  bool equals(JobCategoryRecord? e1, JobCategoryRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.jobsAvailable == e2?.jobsAvailable &&
        e1?.image == e2?.image;
  }

  @override
  int hash(JobCategoryRecord? e) =>
      const ListEquality().hash([e?.title, e?.jobsAvailable, e?.image]);

  @override
  bool isValidKey(Object? o) => o is JobCategoryRecord;
}
