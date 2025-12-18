// Example JavaScript file demonstrating CPRV code standards

/**
 * Calculate the sum of an array of numbers
 * @param {number[]} numbers - Array of numbers to sum
 * @returns {number} The sum of all numbers
 */
function calculateSum(numbers) {
  if (!Array.isArray(numbers)) {
    throw new Error('Input must be an array');
  }

  return numbers.reduce((sum, num) => sum + num, 0);
}

/**
 * Example class demonstrating coding standards
 */
class Calculator {
  constructor() {
    this.result = 0;
  }

  /**
   * Add a number to the current result
   * @param {number} value - The value to add
   * @returns {Calculator} Returns this for chaining
   */
  add(value) {
    if (typeof value !== 'number') {
      throw new Error('Value must be a number');
    }
    this.result += value;
    return this;
  }

  /**
   * Get the current result
   * @returns {number} The current result
   */
  getResult() {
    return this.result;
  }

  /**
   * Reset the calculator
   */
  reset() {
    this.result = 0;
  }
}

// Example usage
const calc = new Calculator();
const numbers = [1, 2, 3, 4, 5];
const sum = calculateSum(numbers);

console.log(`Sum: ${sum}`);

export { Calculator, calculateSum };
