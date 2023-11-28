abstract class Parent {
  String? name;
  String? group;
  void greeting(name, group); // abstract method 
}

class Child1 extends Parent {
  void greeting(name, group) { // abstract method 
    print('Good Moring $name from group $group');
  } 
}

class Child2 extends Parent {
  void greeting(name, group){ // abstract method 
    print('Good Afternoon $name from group $group');
  }
}

void main(){
  var child1 = Child1();
  var child2 = Child2();
  child1.greeting('Haryo','4'); // method class Child1
  child2.greeting('Rizqullah','4'); // method class Child2
}





