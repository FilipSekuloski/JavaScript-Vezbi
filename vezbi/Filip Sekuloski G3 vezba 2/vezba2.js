console.log("connected");

let userInput=prompt("Vnesete godina na ragjanje");
let parsedInput=parseInt(userInput);
result=(parsedInput-4)%12;
console.log(result);142

if(!Number.isNaN(result))
{
    if(result===0){
    console.log("You are a Rat in chinese zoodiac");
    }
    else if(result===1){
    console.log("You are an Ox in chinese zoodiac")
    }
    else if(result===2){
        console.log("You are a Tiger in chinese zoodiac")
    }
    else if(result===3){
        console.log("You are a Rabbit in chinese zoodiac")
    }
    else if(result===4){
        console.log("You are a Dragon in chinese zoodiac")
    }
    else if(result===5){
        console.log("You are a Snake in chinese zoodiac")
    }
    else if(result===6){
        console.log("You are a Horse in chinese zoodiac")
    }
    else if(result===7){
        console.log("You are a Goat in chinese zoodiac")
    }
    else if(result===8){
        console.log("You are a Monkey in chinese zoodiac")
    }
    else if(result===9){
        console.log("You are a Rooster in chinese zoodiac")
    }
    else if(result===10){
        console.log("You are a Dog in chinese zoodiac")
    }
    else {
        console.log("You are a Pig in chinese zoodiac")
    }
}
else {
    console.log("nevalidna godina na ragjanje")
}