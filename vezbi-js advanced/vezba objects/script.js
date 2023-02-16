//Exercise 1
//Create 3 object templates. Academy, Student and Subject. The structure should be:

// Academy

// Name - string
// Students - array of Students
// Subjects - array of Subjects
// Start - Date when it starts
// End - Date when it ends
// NumberOfClasses - number of subjects * 10, not settable
// PrintStudents - method that prints all students in console
// PrintSubjects - method that prints all subjects in console

let academy = {
    name : "Seavus",
    students : ["Angel","Petar","Dragan","Filip","Angel","Stefan"],
    subjects : ["HTML","CSS","C#",".NET"],
    start : "28.10",
    end : "25.09",
    numberOfClasses : function() {
        result = this.subjects.length * 10;
        console.log(result);
    },
    printStudents : function(){
        
        for(let student of this.students){
        console.log(student);
        }
    },
    printSubjects : function(){
        for(let subject of this.subjects){
            console.log(subject);
        }
    }

};

console.log(academy);
console.log(academy.printSubjects());
console.log(academy.numberOfClasses());

// Subject

// Title - string
// NumberOfClasses - default 10, not settable
// isElective - boolean
// Academy - Academy object
// Students - array of Students
// OverrideClasses - accepts a number and rewrites the NumberOfClasses property with that number. The number can't be smaller than 3.

let subject = {
    title : "",
    numberOfClasses : 10,
    isElective : true,
    academy :"" ,
    students :[] ,
    overrideClasses :function () {

    } ,
}

// Student

// FirstName - string
// LastName - string
// Age - number
// CompletedSubjects - emptyArray as default, not settable
// Academy - null as default, not settable
// CurrentSubject - null as default, not settable
// StartAcademy - accepts Academy object that it sets to the Academy property of the student
// StartSubject - accepts Subject object and adds it to the CurrentSubject property but only if the student has an Academy object in the Academy property and that subject exists in the academy. If not, give error in console and do not set the CurrentSubject property

let student = {
    firstName: "",
    lastName: "",
    age: [],
    completedSubjects:[],
    academy : null,
    currentSubject : null, 
    StartAcademy : function () {

    },
    StartSubject : function () {

    },
}




// Exercise 2
// Make the functions StartAcademy and StartSubject dynamic.

// StartAcademy - When the student calls StartAcademy, the student should also be added to the Academy property Students ( The academy that he is starting )
// StartSubject - When the student calls StartSubject the student should also be added to the Subject property Students ( The subject that he is starting ). If there was another subject in the CurrentSubject property, that subject should be transferred to CompletedSubjects and then add the new Subject