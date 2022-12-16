
function calculateDogAge(dogage){
    let result=dogage*7;
    return result;
}
function caluclateHumanAge(humanage){
    let result1=humanage/7;
    return result1;
}

let resultat=prompt("Napisete -'kuce' za da gi presmetate coveckite godini na kuceto ili napisete -'covek' za da gi presmetate kuceskite godini na covekot! ");
if(resultat==="kuce"){
    let dogageCalculator=parseInt(prompt("Vnesete gi godinite na kuceto?"));
    console.log("Kuceto ima :",calculateDogAge(dogageCalculator),"covecki godini");
}
else if(resultat==="covek"){
    let humanageCalculator=parseInt(prompt("Vnesete gi godinite na covekot"));
    console.log("Covekot ima :",caluclateHumanAge(humanageCalculator), "kuceski godini.");
}
else{
    console.log("Pogresni podatoci");
}