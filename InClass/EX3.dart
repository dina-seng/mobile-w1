void main() {
  List<int> score = [45, 78, 62, 49, 85, 33, 90, 50];

  method1(score);
  method2(score);
}

void method1(List<int> score) {
  List<int> passScore = [];
  int size = score.length;
  for (var i = 0; i < size; i++) {
    if (score[i] >= 50) {
      passScore.add(score[i]);
    }
  }
  print("method 1:");
  for (var i = 0; i < passScore.length; i++) {
    print(passScore[i]);
  }
}

void method2(List<int> score) {
  List<int> passScore = score.where((e) => (e >= 50)).toList();

  print("method 2:");
  for (var i = 0; i < passScore.length; i++) {
    print(passScore[i]);
  }
}
