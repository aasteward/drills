
var q = 0;
var d = 0;
var n = 0;
var p = 0;

function changecount(money){
    money = money.toFixed(2);
    for (q = 0; money > 0.24; q++){
        money -= 0.25;
    }
    for (d = 0; money > 0.09; d++){
        money -= 0.10;
    }
    for (n = 0; money > 0.04; n++){
        money -= 0.05;
    }
    for (p = 0; money > 0.00; p++){
        money -= 0.01;
    }
    return q + " quarters\n" + d + " dimes\n" + n + " nickel\n" + p + " pennies";
}

console.log(changecount(4));