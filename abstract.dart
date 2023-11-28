abstract class Parent {
  String? name;
  String? group;
}

class Child1 extends Parent {
  void greeting(name, group) {
    print('Good Moring $name from group $group');
  }
}

class Child2 extends Parent {
  void welcome(name, group){
    print('Welcome $name from group $group');
  }
}

void main(){
  var child1 = Child1();
  var child2 = Child2();
  child1.greeting('Haryo','4');
  child2.welcome('Rizqullah','4');
}





