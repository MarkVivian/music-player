class School {
  String? name;
  School(this.name);

  callHim() {
    print("my name is ${this.name}");
  }
}

class Students extends School {
  Students(String name, int age) : super(name);

  @override
  callHim() {
    print("this is now in the subclass... ");
    // TODO: implement callHim
    return super.callHim();
  }
}

class Learn {
  // this is a constructor..
  Learn(String caller) {
    print("this class has been called by $caller");
    this.age = 20;
  }

  int? age;

  // this is a named constructor meaning it has a name...
  Learn.called() {
    print("you have specificaly called me for some reason...");
  }

  // this are methods...
  void constructor() {
    print("your age is $age");
  }

  int calculator() {
    return 12 * 12;
  }
}

main() {
  var learn = Learn("Mark vivian");
  var learnCalled = Learn.called();
  learnCalled.constructor();
  learn.constructor();
  print(
      "${learn.calculator()} for learn \n ${learnCalled.calculator()} for leranCalled");
  Students("diego maradona", 12).callHim();
}
