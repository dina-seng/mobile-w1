void main() {
  final students = [
    {"name": "Dara", "Dart": 70, "Flutter": 80, "Database": 60},
    {"name": "Sokha", "Dart": 50, "Flutter": 90, "Database": 70},
    {"name": "Lina", "Dart": 80, "Flutter": 70, "Database": 90},
  ];

  final courses = ["Dart", "Flutter", "Database"];

  for (String course in courses) {
    List<int> courseScore = [];

    for (var student in students) {
      int score = student[course] as int;
      courseScore.add(score);
    }

    print("Course: $course - Average: ${computeAverage(courseScore)}");
  }
}

double computeAverage(List<int> scores) {
  double averageScore;
  int sum = 0;

  for (var score in scores) {
    sum += score;
  }

  averageScore = sum / scores.length;

  return averageScore;
}
