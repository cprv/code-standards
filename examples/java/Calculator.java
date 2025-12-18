/**
 * Example Java class demonstrating CPRV code standards
 */
public class Calculator {
    private double result;

    /**
     * Constructor initializing result to 0
     */
    public Calculator() {
        this.result = 0.0;
    }

    /**
     * Add a value to the current result
     *
     * @param value The value to add
     * @return This calculator instance for method chaining
     */
    public Calculator add(double value) {
        this.result += value;
        return this;
    }

    /**
     * Get the current result
     *
     * @return The current result value
     */
    public double getResult() {
        return this.result;
    }

    /**
     * Reset the calculator to 0
     */
    public void reset() {
        this.result = 0.0;
    }

    /**
     * Calculate the sum of an array of numbers
     *
     * @param numbers Array of numbers to sum
     * @return The sum of all numbers
     */
    public static double calculateSum(double[] numbers) {
        if (numbers == null) {
            throw new IllegalArgumentException("Input array cannot be null");
        }

        double sum = 0.0;
        for (double num : numbers) {
            sum += num;
        }
        return sum;
    }

    /**
     * Main method demonstrating usage
     *
     * @param args Command line arguments (not used)
     */
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        double[] numbers = {1.0, 2.0, 3.0, 4.0, 5.0};
        double sum = calculateSum(numbers);

        System.out.println("Sum: " + sum);

        calc.add(10).add(20).add(30);
        System.out.println("Calculator result: " + calc.getResult());
    }
}
