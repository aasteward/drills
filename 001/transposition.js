/* original code for string inputs only

function transposer(input){
    input = input.split("").join("\n");
    return input;
}

console.log(transposer("hello world"));
*/

var sample = ["why", "is", "this", "not", "working"];

function transposer(input){
    var sorted = input.sort(function(a, b){
        return b.length - a.length;
    });
    var word = new Array(sorted[0].length);
    var array = [];
    
    for (var i = 0; i < input.length; i++){
        word = input[i].split();
        array.push(word);
    }
    
    // var word = [];
    // var output = [];
    // for (var i = 0; i < input.length; i++){
    //     for(var c = 0; c < input[i].length; c++){
    //         var l = input[i].charAt(c);
    //         if (l == ""){
    //             l = " ";
    //         }
            
    //         word.push(l);
    //         word.join();
    //     }
    // output.push(word);
    // output.join();
    // }
    return word;
    // return output;
}

console.log(transposer(sample));