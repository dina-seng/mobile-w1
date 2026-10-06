void main() {
  var data = [1, 2, 3];

  var newData = [];
  for (var n in data) {
    newData.add(n * 2);
  }
  print(newData);

  int size = data.length;
  for (var i = 0; i < size; i++) {
    data[i] = data[i] * 2;
  }

  const pizzaPrices = {'margherita': 5.5, 'pepperoni': 7.5, 'vegetarian': 6.5};

  const books = [
    {'title': '1984', 'author': 'George Orwell'},
    {'title': 'Brave New World', 'author': 'Aldous Huxley'},
    {'title': 'Fahrenheit 451', 'author': 'Ray Bradbury'},
  ];

  const company = {
    'HR': {'employees': 5, 'budget': 20000},
    'IT': {'employees': 10, 'budget': 50000},
    'Marketing': {'employees': 7, 'budget': 30000},
  };

  const coordinates = [
    [1, 2],
    [3, 4],
    [5, 6],
  ];

  data = data.map((e) => e * 2).toList();

  print(data);
  printList(['apple', 'banana', 'orange']);

  greeting('Alice', "Hello sayonarak");
}

void greeting(String name, [String? message]) {
  if (message != null) {
    print('$message, $name!');
  } else {
    print('Hello, $name!');
  }
}

void printList(List<String> items) {
  for (var item in items) {
    print(item);
  }
}
