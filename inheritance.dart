class Parent{
String? name ;
String? group ;
}


class Child1 extends Parent { // pewarisan kelas dari kelas parent
void greeting(name, group){
    print('Good Afternoon $name from group $group');
}
}

void main(){
var child1= Child1();
child1.greeting('Qullah','4');
}