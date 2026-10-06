void main() {
  Map<String, int> studentScores = {
    "Dara": 78,
    "Sokha": 45,
    "Lina": 62,
    "Vanna": 39,
    "Mony": 85,
  };

  print("Student Scores: $studentScores");

  print("student who passed the exam: ${passedStudents(studentScores)}");
}

List<String> passedStudents(Map<String, int> student) {
  List<String> passList = [];
  for (var pass in student.entries) {
    if (pass.value >= 50) {
      passList.add(pass.key);
    }
  }

  return passList;
}
