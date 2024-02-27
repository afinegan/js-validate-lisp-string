# Lisp Parentheses Checker

This Lisp Parentheses Checker is a Node.js application designed to validate the parentheses in a given Lisp code string. It ensures that all parentheses are properly closed and nested, a common requirement for the correctness of Lisp code.

## Features

- Checks if the parentheses in a Lisp code string are correctly balanced.
- Can be used from the command line to validate files containing Lisp code.
- Includes unit tests to ensure the reliability of the checker.

## Getting Started

### Prerequisites
- Node.js (recommended version 12 or higher)

### Installation
1. Clone the repository to your local machine:
```
git clone https://github.com/your-username/lisp-parentheses-checker.git
```
2. Navigate to the project directory:
```
cd lisp-parentheses-checker
```
3. Install the necessary dependencies:
```
npm install
```

### Usage
To check valid Lisp code string, pipe it directly from the command line:
```
cat testExamples/validLispProgram.lisp | npm start
```

To check invalid Lisp code string, pipe it directly from the command line:
```
cat testExamples/invalidLispProgram.lisp | npm start
```

Piping, takes the example file and streams it into the javascript application through stdin

### Running Tests
To run the unit tests to ensure the program works as expected:
```
npm test
```

## Development

This project is set up using Node.js and Jest for unit testing. The source code is located in the `src` directory, and tests are located with each file (quick check to make sure you have covered all tests). Contributions to extend functionality or improve the code are welcome.

## Contributing

Feel free to fork the repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

Ensure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
