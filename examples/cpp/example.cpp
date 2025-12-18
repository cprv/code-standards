// Example C++ file demonstrating CPRV code standards

#include <iostream>
#include <stdexcept>
#include <vector>

/**
 * A simple calculator class demonstrating code standards
 */
class Calculator {
   private:
    double result;

   public:
    /**
     * Constructor initializing result to 0
     */
    Calculator() : result(0.0) {}

    /**
     * Add a value to the current result
     * @param value The value to add
     * @return Reference to this calculator for chaining
     */
    Calculator& add(double value) {
        result += value;
        return *this;
    }

    /**
     * Get the current result
     * @return The current result value
     */
    double getResult() const { return result; }

    /**
     * Reset the calculator to 0
     */
    void reset() { result = 0.0; }
};

/**
 * Calculate the sum of a vector of numbers
 * @param numbers Vector of numbers to sum
 * @return The sum of all numbers
 */
double calculateSum(const std::vector<double>& numbers) {
    double sum = 0.0;
    for (double num : numbers) {
        sum += num;
    }
    return sum;
}

int main() {
    Calculator calc;
    std::vector<double> numbers = {1.0, 2.0, 3.0, 4.0, 5.0};
    double sum = calculateSum(numbers);

    std::cout << "Sum: " << sum << std::endl;

    calc.add(10).add(20).add(30);
    std::cout << "Calculator result: " << calc.getResult() << std::endl;

    return 0;
}
