function madLib(verb, adjective, noun) {
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
}

//console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

//console.log(isSubstring("time to program", "time"));
//console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
    let newArr = [];
    for (let i of array) {
        if ((i % 3 == 0 && i % 5 != 0) || (i % 3 != 0 && i % 5 == 0)) {
            newArr.push(i);
        }
    }
    return newArr;
}

//console.log(fizzBuzz([3, 5, 10, 15]));

function isPrime(number) {
    if (number < 2) {
        return false;
    }

    for (let i = 2; i < number; i++) {
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));

function sumOfNPrimes(n) {
    let primes = [];
    let i = 2;

    while (primes.length < n) {
        while (!isPrime(i)) {
            i++;
        }
        primes.push(i);
        i++;
    }

    return primes.reduce((pv, cv) => pv + cv, 0);
}

// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));