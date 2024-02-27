export const isValidLispCode = (code) => {
    console.log(`Character Count In LISP String: ${code.length}`);
    let stack = [];

    for (let char of code) {
        if (char === '(') {
            stack.push(char);
        } else if (char === ')') {
            if (stack.pop() !== '(') {
                return false;
            }
        }
    }

    return stack.length === 0;
}