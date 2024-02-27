import {isValidLispCode} from "./validators/isValidLispCode.js";

// this file is not unit tested because it is not a function or a method to test (left for integration test)
let inputData = '';

process.stdin.setEncoding('utf8');
process.stdin.on('readable', () => {
    let chunk;
    while ((chunk = process.stdin.read()) !== null) {
        inputData += chunk;
    }
});
process.stdin.on('end', () => {
    const isValid = isValidLispCode(inputData);
    console.log(isValid);
});