class Parent{
String name = 'Haryo Darma Putra';
String group = '4';
void morning(name, group){
    print('Good Morning $name from group $group');
}
}

class Child1 extends Parent {
String name = 'Muhammad Rizqullah'; // field overriding
String group = '4';
void afternoon(name, group){
    print('Good Afternoon $name from group $group');
}
}

void main(){
var child1= Child1();ss
child1.morning();
child1.afternoon();
}