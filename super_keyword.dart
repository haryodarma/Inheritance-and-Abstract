class Parent{
String name = 'Haryo Darma Putra';
String group = '4';
void morning(){
    print('Good Morning $name from group $group');
}
}

class Child1 extends Parent {
String name = 'Muhammad Rizqullah'; // field overriding
String group = '4';
void afternoon(){
    print('Good Afternoon $name from group $group');
} 
void night(){
    print('Good Night ${super.name} from group ${super.group}');
} 
}

void main(){
var child1= Child1();
child1.afternoon(); // mengakses field pada class child
child1.night() ; // mengakses field pada class parent
}