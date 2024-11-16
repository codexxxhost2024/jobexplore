import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompanyRecord extends FirestoreRecord {
  CompanyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  bool hasFacebook() => _facebook != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "logoUrl" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "employees" field.
  int? _employees;
  int get employees => _employees ?? 0;
  bool hasEmployees() => _employees != null;

  // "founded" field.
  DateTime? _founded;
  DateTime? get founded => _founded;
  bool hasFounded() => _founded != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "jobs" field.
  List<DocumentReference>? _jobs;
  List<DocumentReference> get jobs => _jobs ?? const [];
  bool hasJobs() => _jobs != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _companyName = snapshotData['companyName'] as String?;
    _description = snapshotData['description'] as String?;
    _address = snapshotData['address'] as String?;
    _email = snapshotData['email'] as String?;
    _facebook = snapshotData['facebook'] as String?;
    _website = snapshotData['website'] as String?;
    _logoUrl = snapshotData['logoUrl'] as String?;
    _employees = castToType<int>(snapshotData['employees']);
    _founded = snapshotData['founded'] as DateTime?;
    _industry = snapshotData['industry'] as String?;
    _jobs = getDataList(snapshotData['jobs']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('company')
          : FirebaseFirestore.instance.collectionGroup('company');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('company').doc(id);

  static Stream<CompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompanyRecord.fromSnapshot(s));

  static Future<CompanyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompanyRecord.fromSnapshot(s));

  static CompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompanyRecordData({
  String? companyName,
  String? description,
  String? address,
  String? email,
  String? facebook,
  String? website,
  String? logoUrl,
  int? employees,
  DateTime? founded,
  String? industry,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'companyName': companyName,
      'description': description,
      'address': address,
      'email': email,
      'facebook': facebook,
      'website': website,
      'logoUrl': logoUrl,
      'employees': employees,
      'founded': founded,
      'industry': industry,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompanyRecordDocumentEquality implements Equality<CompanyRecord> {
  const CompanyRecordDocumentEquality();

  @override
  bool equals(CompanyRecord? e1, CompanyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.companyName == e2?.companyName &&
        e1?.description == e2?.description &&
        e1?.address == e2?.address &&
        e1?.email == e2?.email &&
        e1?.facebook == e2?.facebook &&
        e1?.website == e2?.website &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.employees == e2?.employees &&
        e1?.founded == e2?.founded &&
        e1?.industry == e2?.industry &&
        listEquality.equals(e1?.jobs, e2?.jobs);
  }

  @override
  int hash(CompanyRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.description,
        e?.address,
        e?.email,
        e?.facebook,
        e?.website,
        e?.logoUrl,
        e?.employees,
        e?.founded,
        e?.industry,
        e?.jobs
      ]);

  @override
  bool isValidKey(Object? o) => o is CompanyRecord;
}
