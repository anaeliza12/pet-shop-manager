const nameDB = "myApp";

const tableName = "animals";

const String createTable = '''
  CREATE TABLE animals(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    raca TEXT NOT NULL,
    idade TEXT NOT NULL
  )
 ''';