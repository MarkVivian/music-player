var files = () => print("this is an arrow function");

void container({String name = "mark vivian"}) {
  print("this is normal type of function by $name");
}

main() {
  files();
  container();
  container(name: "veronica");
  useFunction((a,b)=> a*b);
}

void useFunction(Function calculator) {
  int results = calculator(10, 21);
  print(results);
}
