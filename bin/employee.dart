class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
  void displayInfo() {
    print("Employee:");
    print("  Name  : $name");
    print("  Salary: \$${salary.toStringAsFixed(2)}");
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  @override
  void displayInfo() {
    print("Manager Information:");
    print("  Name      : $name");
    print("  Salary    : \$${salary.toStringAsFixed(2)}");
    print("  Department: $department");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
    : super(name, salary);

  @override
  void displayInfo() {
    print("Developer Information:");
    print("  Name               : $name");
    print("  Salary             : \$${salary.toStringAsFixed(2)}");
    print("  ProgrammingLanguage: $programmingLanguage");
  }
}

void main() {
  Manager manager = Manager("Nila Chowdhury", 75000, "Human Resources");
  Developer developer = Developer("Atoshi Chowdhury", 65000, "Dart/Flutter");

  manager.displayInfo();
  developer.displayInfo();
}
