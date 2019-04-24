class NoteItem {
  String id;
  String title;
  String createdAt;
  String lastUpdateAt;
  bool hasWorkingCopy;

  NoteItem.fromJson(Map<String, dynamic> parseJson)
      : id = parseJson['id'],
        title = parseJson['title'],
        createdAt = parseJson['createdAt'],
        lastUpdateAt = parseJson['lastUpdateAt'],
        hasWorkingCopy = parseJson['hasWorkingCopy'];

  NoteItem.fromDb(Map<String, dynamic> parseJson)
      : id = parseJson['id'],
        title = parseJson['title'],
        createdAt = parseJson['createdAt'],
        lastUpdateAt = parseJson['lastUpdateAt'],
        hasWorkingCopy = parseJson['hasWorkingCopy'];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "title": title,
      "createdAt": createdAt,
      "lastUpdateAt": lastUpdateAt,
      "hasWorkingCopy": hasWorkingCopy,
    };
  }
}
