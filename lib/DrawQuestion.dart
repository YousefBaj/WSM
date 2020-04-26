class DrawQuestion {
  DrawQuestion({
    this.id,
    this.question,
    this.image,
    this.xmax,
    this.ymax,
    this.xmin,
    this.ymin,
  });
  final int id;
  final String question, image;
  final double xmax, xmin, ymax, ymin;

  factory DrawQuestion.fromJson(Map value) {
    return DrawQuestion(
      question: value['question'],
      image: value['image_path'],
    );
  }
}
