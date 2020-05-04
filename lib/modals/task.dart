class Task {
  final String name;
  bool isDone;
  //isdone false isliye kyu ki bydefault toh tumhare task complete toh nhi honge na 
  Task({this.name,this.isDone = false}) ;

  void toggleDone {
    isDone = !isDone;
  }

}