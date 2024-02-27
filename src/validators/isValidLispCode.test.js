import {isValidLispCode} from "./isValidLispCode";

describe('function isValidLispCode', () => {
    test('should return true for code with proper parentheses', () => {
        expect(isValidLispCode('(defun one () (cons (a) (b)))')).toBe(true);
    });

    test('should return false for code with improper parentheses', () => {
        expect(isValidLispCode('(defun two () (cons (a (b)))')).toBe(false);
    });

    test('should return false for code with unclosed parentheses', () => {
        expect(isValidLispCode('(defun three () (cons (a) (b)')).toBe(false);
    });

    test('should return true for empty string', () => {
        expect(isValidLispCode('')).toBe(true);
    });
});