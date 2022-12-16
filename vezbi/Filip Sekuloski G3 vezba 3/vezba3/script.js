function Atmcaluculator(parinasmetka,vadenjepari){
    let result=(parinasmetka-vadenjepari);
    return result;
}

let calculate=parseInt(prompt("Kolku pari imate na smetka"));
let calculate1=parseInt(prompt("Kolku pari sakate da izvadite"));
if(calculate>=calculate1){
    console.log("Imavte na smetka: ",calculate,"denari.");
console.log("Izvadivte od smetkata: ",calculate1,"denari");
console.log("Vi ostanaa na smetka ushte: ",Atmcaluculator(calculate,calculate1),"denari.");
}
else{
    console.log("Nemate dovolno sredstva za da prodolzi transakcijata");
}