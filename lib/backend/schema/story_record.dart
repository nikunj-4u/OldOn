import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StoryRecord extends FirestoreRecord {
  StoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "story" field.
  String? _story;
  String get story => _story ?? '';
  bool hasStory() => _story != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _story = snapshotData['story'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('story');

  static Stream<StoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StoryRecord.fromSnapshot(s));

  static Future<StoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StoryRecord.fromSnapshot(s));

  static StoryRecord fromSnapshot(DocumentSnapshot snapshot) => StoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStoryRecordData({
  String? story,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'story': story,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class StoryRecordDocumentEquality implements Equality<StoryRecord> {
  const StoryRecordDocumentEquality();

  @override
  bool equals(StoryRecord? e1, StoryRecord? e2) {
    return e1?.story == e2?.story && e1?.title == e2?.title;
  }

  @override
  int hash(StoryRecord? e) => const ListEquality().hash([e?.story, e?.title]);

  @override
  bool isValidKey(Object? o) => o is StoryRecord;
}
