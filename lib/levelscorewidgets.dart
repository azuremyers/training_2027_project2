import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BrokeSwitch extends ConsumerWidget{
  const BrokeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final broken = ref.watch(
      scoreProvider.select((score) => score.isItBroken),
    );
    return Switch(
      value: broken,
      activeThumbColor: Colors.blue[900],
      onChanged: (bool value) {
        ref.read(scoreProvider.notifier).setBroken(value);
      },
    );
  }

}

class LevelScoreWidget extends ConsumerWidget {
  final String scoreID;

  const LevelScoreWidget(this.scoreID, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final score = ref.watch(
      scoreProvider.select((score) => score.scores[scoreID] ?? 0),
    );

    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(13.0),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$scoreID: $score'),
          ElevatedButton(
            onPressed: () =>
                ref.read(scoreProvider.notifier).increment(scoreID),
            child: const Text('+1'),
          ),
          ElevatedButton(
            onPressed: () =>
                ref.read(scoreProvider.notifier).decrement(scoreID),
            child: const Text('-1'),
          ),
        ],
      ),
    );
  }
}

class Score {
  Map<String, int> scores = {};
  bool isItBroken = false;

  Score copy(Map<String, int> newScores) {
    Score newScore = Score();
    newScore.scores = scores;
    newScore.scores.addAll(newScores);
    return newScore;
  }

  Score copyWithBroken(bool broken) {
    Score newScore = Score();
    newScore.scores = scores;
    newScore.isItBroken = broken;
    return newScore;
  }

  void setScore(String id, int newScore) {
    scores[id] = newScore;
  }

  void setBroken(bool broken) {
    isItBroken = broken;
  }
}

class ScoreNotifier extends Notifier<Score> {
  @override
  Score build() {
    return Score();
  }

  void increment(String scoreID) {
    final current = state.scores[scoreID] ?? 0;
    state = state.copy({scoreID: current + 1});
  }

  void decrement(String scoreID) {
    final current = state.scores[scoreID] ?? 0;
    state = state.copy({scoreID: current - 1});
  }

  void setBroken(bool broken) {
    state = state.copyWithBroken(broken);
  }
}

final scoreProvider = NotifierProvider<ScoreNotifier, Score>(
  ScoreNotifier.new,
);
