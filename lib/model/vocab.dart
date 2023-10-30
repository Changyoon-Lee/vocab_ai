class VocabModel {
  final int? id;
  final String vocab;
  final String mean;
  final String? example;
  final String state;
  final DateTime createdAt;

  VocabModel({
    this.id,
    required this.vocab,
    required this.mean,
    required this.state,
    this.example,
  }) : createdAt = DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      Column.vocab: vocab,
      Column.mean: mean,
      Column.example: example,
      Column.createdAt: createdAt.toString()
    };
  }

  VocabModel insertedData(int id) {
    return VocabModel(
      id: id,
      vocab: vocab,
      mean: mean,
      state: state,
      example: example,
    );
  }
}

class Column {
  static String id = "id";
  static String vocab = "vocab";
  static String mean = "mean";
  static String example = "example";
  static String state = "state";
  static String createdAt = "createdAt";
}
