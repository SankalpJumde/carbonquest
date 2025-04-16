import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChallengeSubmissionsRecord extends FirestoreRecord {
  ChallengeSubmissionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "challengeId" field.
  String? _challengeId;
  String get challengeId => _challengeId ?? '';
  bool hasChallengeId() => _challengeId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "proofImage" field.
  String? _proofImage;
  String get proofImage => _proofImage ?? '';
  bool hasProofImage() => _proofImage != null;

  // "submissionDate" field.
  DateTime? _submissionDate;
  DateTime? get submissionDate => _submissionDate;
  bool hasSubmissionDate() => _submissionDate != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "ecoPointsEarned" field.
  String? _ecoPointsEarned;
  String get ecoPointsEarned => _ecoPointsEarned ?? '';
  bool hasEcoPointsEarned() => _ecoPointsEarned != null;

  // "enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  void _initializeFields() {
    _challengeId = snapshotData['challengeId'] as String?;
    _userId = snapshotData['userId'] as String?;
    _proofImage = snapshotData['proofImage'] as String?;
    _submissionDate = snapshotData['submissionDate'] as DateTime?;
    _status = snapshotData['status'] as bool?;
    _ecoPointsEarned = snapshotData['ecoPointsEarned'] as String?;
    _enddate = snapshotData['enddate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('challenge_submissions');

  static Stream<ChallengeSubmissionsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ChallengeSubmissionsRecord.fromSnapshot(s));

  static Future<ChallengeSubmissionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ChallengeSubmissionsRecord.fromSnapshot(s));

  static ChallengeSubmissionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChallengeSubmissionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChallengeSubmissionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChallengeSubmissionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChallengeSubmissionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChallengeSubmissionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChallengeSubmissionsRecordData({
  String? challengeId,
  String? userId,
  String? proofImage,
  DateTime? submissionDate,
  bool? status,
  String? ecoPointsEarned,
  DateTime? enddate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'challengeId': challengeId,
      'userId': userId,
      'proofImage': proofImage,
      'submissionDate': submissionDate,
      'status': status,
      'ecoPointsEarned': ecoPointsEarned,
      'enddate': enddate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChallengeSubmissionsRecordDocumentEquality
    implements Equality<ChallengeSubmissionsRecord> {
  const ChallengeSubmissionsRecordDocumentEquality();

  @override
  bool equals(ChallengeSubmissionsRecord? e1, ChallengeSubmissionsRecord? e2) {
    return e1?.challengeId == e2?.challengeId &&
        e1?.userId == e2?.userId &&
        e1?.proofImage == e2?.proofImage &&
        e1?.submissionDate == e2?.submissionDate &&
        e1?.status == e2?.status &&
        e1?.ecoPointsEarned == e2?.ecoPointsEarned &&
        e1?.enddate == e2?.enddate;
  }

  @override
  int hash(ChallengeSubmissionsRecord? e) => const ListEquality().hash([
        e?.challengeId,
        e?.userId,
        e?.proofImage,
        e?.submissionDate,
        e?.status,
        e?.ecoPointsEarned,
        e?.enddate
      ]);

  @override
  bool isValidKey(Object? o) => o is ChallengeSubmissionsRecord;
}
