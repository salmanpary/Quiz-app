import 'question.dart';
class Quizbrain{
  int _questionnumber=0;
  int _maxQuestion = 0;
  void nextquestion(){
    if(_questionnumber<_questionbank.length-1){
      _questionnumber++;
    }

  }
  String getquestiontext(){
    return _questionbank[_questionnumber].questiontext;
  }
  bool getcorrectanswer(){
    return _questionbank[_questionnumber].questionanswer;
  }
  bool isFinished() {
    if (_questionnumber >= _questionbank.length-1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      _maxQuestion++;
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {

    _questionnumber = 0;
  }

  List<Question> _questionbank=[
    Question('sreejith oru mairan aan',  true),
    Question('kishore nalla chekkan aan', false),
    Question('fayaz did not masturbate even once', true),
    Question('rosh kozhi or not',  true),
    Question('sreejith pooran aano', true),
    Question('kishore kanjav aano',  true),
    Question(
        'adam decent aano',
        false),
    Question('mahesh poli aano',
        true),


  ];

}
