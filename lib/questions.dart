import 'package:wsm/DrawQuestion.dart';

import 'multiplechoiceQuestion.dart';

class Questions {
  DrawQuestion draw;
  MultiplechoiceQuestio mcq;

  Questions({DrawQuestion draw, MultiplechoiceQuestio mcq}) {
    this.draw = draw;
    this.mcq = mcq;
  }
}
