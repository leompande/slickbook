class Note {
  String id;
  String title;
  String createdAt;
  String lastUpdateAt;
  String savedCopy;
  String workingCopy;

  Note.fromJson(Map<String, dynamic> parseJson)
      : id = parseJson['id'],
        title = parseJson['title'],
        createdAt = parseJson['createdAt'],
        lastUpdateAt = parseJson['lastUpdateAt'],
        savedCopy = parseJson['savedCopy'];

  Note.fromDb(Map<String, dynamic> parseJson)
      : id = parseJson['id'],
        title = parseJson['title'],
        createdAt = parseJson['createdAt'],
        lastUpdateAt = parseJson['lastUpdateAt'],
        savedCopy = parseJson['savedCopy'];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "title": title,
      "createdAt": createdAt,
      "lastUpdateAt": lastUpdateAt,
      "savedCopy": savedCopy,
      "workingCopy": workingCopy,
    };
  }
}
