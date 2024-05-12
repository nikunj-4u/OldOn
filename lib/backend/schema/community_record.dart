import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityRecord extends FirestoreRecord {
  CommunityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  bool hasBanner() => _banner != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "u_name" field.
  String? _uName;
  String get uName => _uName ?? '';
  bool hasUName() => _uName != null;

  // "u_image" field.
  String? _uImage;
  String get uImage => _uImage ?? '';
  bool hasUImage() => _uImage != null;

  void _initializeFields() {
    _banner = snapshotData['banner'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _uName = snapshotData['u_name'] as String?;
    _uImage = snapshotData['u_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('community');

  static Stream<CommunityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityRecord.fromSnapshot(s));

  static Future<CommunityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityRecord.fromSnapshot(s));

  static CommunityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityRecordData({
  String? banner,
  String? title,
  String? description,
  DateTime? time,
  String? uName,
  String? uImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'banner': banner,
      'title': title,
      'description': description,
      'time': time,
      'u_name': uName,
      'u_image': uImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityRecordDocumentEquality implements Equality<CommunityRecord> {
  const CommunityRecordDocumentEquality();

  @override
  bool equals(CommunityRecord? e1, CommunityRecord? e2) {
    return e1?.banner == e2?.banner &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.time == e2?.time &&
        e1?.uName == e2?.uName &&
        e1?.uImage == e2?.uImage;
  }

  @override
  int hash(CommunityRecord? e) => const ListEquality().hash(
      [e?.banner, e?.title, e?.description, e?.time, e?.uName, e?.uImage]);

  @override
  bool isValidKey(Object? o) => o is CommunityRecord;
}
