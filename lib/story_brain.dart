import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
        storyTitle:
            'You find yourself in an enchanted forest and discover a glowing bridge leading to a mysterious castle. At the entrance, a wise old man tells you: "You must choose wisely!"',
        choice1: 'Ask the old man about the bridge.',
        choice2: 'Cross the bridge without hesitation.'),
    Story(
        storyTitle:
            'The old man tells you that the bridge is guarded by spirits that ask riddles.',
        choice1: 'Try to answer the riddle.',
        choice2: 'Look for another way to the castle.'),
    Story(
        storyTitle:
            'As you cross the bridge, you feel a cold breeze and hear playful laughter. The spirits appear before you and say: "If you want to pass, you must answer a riddle!"',
        choice1: 'Accept the challenge and listen to the riddle.',
        choice2: 'Try to run across the bridge without answering.'),
    Story(
        storyTitle:
            'The spirits ask you a riddle: "What has many hearts but does not beat?"',
        choice1: 'Answer: A deck of cards!',
        choice2: 'Try to run across the bridge without answering.'),
    Story(
        storyTitle:
            'The spirits smile and allow you to pass. Inside the castle, you discover a magical treasure that grants you one wish!',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you try to escape, the bridge starts to collapse, and you fall into a shimmering river. A mermaid saves you and leads you to a mysterious island.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You find a hidden path through the forest that leads directly to the castle. There, you discover it is a secret academy of magic, and you are given the chance to become a powerful wizard.',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void reset() {
    _storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        if (choiceNumber == 1) {
          _storyNumber = 1;
        } else {
          _storyNumber = 2;
        }
        break;
      case 1:
        if (choiceNumber == 1) {
          _storyNumber = 2;
        } else {
          _storyNumber = 6;
        }
        break;
      case 2:
        if (choiceNumber == 1) {
          _storyNumber = 3;
        } else {
          _storyNumber = 5;
        }
        break;
      case 3:
        if (choiceNumber == 1) {
          _storyNumber = 4;
        } else {
          _storyNumber = 5;
        }
        break;
      default:
        reset();
    }
  }

  bool buttonShouldBeVisible() {
    return _storyNumber == 0 ||
        _storyNumber == 1 ||
        _storyNumber == 2 ||
        _storyNumber == 3;
  }
}
