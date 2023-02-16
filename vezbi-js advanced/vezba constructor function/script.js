//Exercise 1
function Person (firstName, lastName, age){
   
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.getFullName = function (){
        console.log (`${this.firstName} ${this.lastName} is ${this.age} years old!`);
    }
}
let person1=new Person("filip","sekuloski",25)
console.log(person1)

function Student (academyName, studentId, firstName, lastName, age){

    Object.setPrototypeOf (this, new Person(firstName, lastName, age));
    this.studentId = studentId;
    this.academyName = academyName;
    this.study = function (){
        console.log (`The student ${this.firstName} is studying in the ${this.academyName}`);
    }
}

let student1= new Student("Seavus", 14, "Filip", "Sekuloski", 25);
console.log(student1);


// Exercise 2

//DesignStudent
// isStudentOfTheMonth - boolean
// attendAdobeExam - method that writes in console: The student firstName is doing an adobe exam!

function DesignStudent (studentId, firstName, lastName, age, isStudentOfTheMonth){
    Object.setPrototypeOf (this,new Student(academyName = "Design Student", studentId, firstName, lastName, age));
    this.isStudentOfTheMonth = isStudentOfTheMonth;
    this.attendAdobeExam = function(){
        console.log(`The student ${firstName} is doing an adobe exam!`);
    }
}

student2 = new DesignStudent(156, "Filip", "Sekuloski", 25, true);
console.log(student2);
console.log(student2.attendAdobeExam());

// CodeStudent
// hasIndividualProject - boolean
// hasGroupProject - boolean
// doProject(type) - method that accepts string. If the string is individual or group it should write that the person is working on the project of that type and set the value to true on the property of the project

function CodeStudent(studentId, firstName, lastName, age, hasIndividualProject, hasGroupProject){
    Object.setPrototypeOf (this,new Student(academyName = "Code Student", studentId, firstName, lastName, age));
    this.hasIndividualProject = hasIndividualProject;
    this.hasGroupProject=hasGroupProject;
    this.doProject = function (){
        if(this.hasIndividualProject === true){
        console.log (`The ${this.firstName} is working on a Individual Project`);
    }
    else if(this.hasGroupProject === true){
        console.log (`This ${this.firstName} is working on a Group Project`);
    }
}
}

student3 = new CodeStudent(156, "Filip", "Sekuloski", 25, false, true);
console.log(student3);
console.log(student3.doProject());

// NetworkStudent
// academyPart - number
// attendCiscoExam - method that writes in console: the student firstNAme is doing a cisco exam!
// Note: For all students, the academyName property should be auto generated based on which Student we are creating ( design, code or network )
function NetworkStudent(studentId, firstName, lastName, age, academyPart){
    Object.setPrototypeOf (this, new Student (academyName = "Network Student", studentId, firstName, lastName, age));
    this.academyPart=academyPart;
    this.attendCiscoExam=function(){
        console.log(`The student ${this.firstName} is doing a cisco exam`);
    }
}

student4 = new NetworkStudent(156, "Filip", "Sekuloski", 25, 1414);
console.log(student4);
console.log(student4.attendCiscoExam());
