import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BrandsRecord extends FirestoreRecord {
  BrandsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "logoUrl" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "industry" field.
  String? _industry;
  String get industry => _industry ?? '';
  bool hasIndustry() => _industry != null;

  // "website" field.
  String? _website;
  String get website => _website ?? '';
  bool hasWebsite() => _website != null;

  // "contactPersonNum" field.
  String? _contactPersonNum;
  String get contactPersonNum => _contactPersonNum ?? '';
  bool hasContactPersonNum() => _contactPersonNum != null;

  // "contactPersonName" field.
  String? _contactPersonName;
  String get contactPersonName => _contactPersonName ?? '';
  bool hasContactPersonName() => _contactPersonName != null;

  // "brandname" field.
  String? _brandname;
  String get brandname => _brandname ?? '';
  bool hasBrandname() => _brandname != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _logoUrl = snapshotData['logoUrl'] as String?;
    _industry = snapshotData['industry'] as String?;
    _website = snapshotData['website'] as String?;
    _contactPersonNum = snapshotData['contactPersonNum'] as String?;
    _contactPersonName = snapshotData['contactPersonName'] as String?;
    _brandname = snapshotData['brandname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('brands');

  static Stream<BrandsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BrandsRecord.fromSnapshot(s));

  static Future<BrandsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BrandsRecord.fromSnapshot(s));

  static BrandsRecord fromSnapshot(DocumentSnapshot snapshot) => BrandsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BrandsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BrandsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BrandsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BrandsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBrandsRecordData({
  String? email,
  String? logoUrl,
  String? industry,
  String? website,
  String? contactPersonNum,
  String? contactPersonName,
  String? brandname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'logoUrl': logoUrl,
      'industry': industry,
      'website': website,
      'contactPersonNum': contactPersonNum,
      'contactPersonName': contactPersonName,
      'brandname': brandname,
    }.withoutNulls,
  );

  return firestoreData;
}

class BrandsRecordDocumentEquality implements Equality<BrandsRecord> {
  const BrandsRecordDocumentEquality();

  @override
  bool equals(BrandsRecord? e1, BrandsRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.industry == e2?.industry &&
        e1?.website == e2?.website &&
        e1?.contactPersonNum == e2?.contactPersonNum &&
        e1?.contactPersonName == e2?.contactPersonName &&
        e1?.brandname == e2?.brandname;
  }

  @override
  int hash(BrandsRecord? e) => const ListEquality().hash([
        e?.email,
        e?.logoUrl,
        e?.industry,
        e?.website,
        e?.contactPersonNum,
        e?.contactPersonName,
        e?.brandname
      ]);

  @override
  bool isValidKey(Object? o) => o is BrandsRecord;
}
