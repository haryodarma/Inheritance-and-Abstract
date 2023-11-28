class Parent{
String? name ;
String? group ;
void greeting(name, group){
    print('Good Morning $name from group $group');
}
}

class Child1 extends Parent {
void greeting(name, group){ 
    print('Good Afternoon $name from group $group'); 
} 
}

void main(){
var parent= Parent();
var child1= Child1();
parent.greeting('Haryo','4'); // method greeting pada class parent
child1.greeting('Qullah','4'); // method greeting pada class child setelah overriding
}