class MultiplechoiceQuestio {
  MultiplechoiceQuestio({
    this.id,
    this.question,
    this.image,
    this.answer,
  });
  final int id;
  final String question, image, answer;

  factory MultiplechoiceQuestio.fromJson(Map value) {
    return MultiplechoiceQuestio(
      question: value['question'],
      image: value['image_path'],
    );
  }
}
