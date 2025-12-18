"""Example Python module demonstrating CPRV code standards."""

from typing import List


class Calculator:
    """A simple calculator class demonstrating code standards."""

    def __init__(self) -> None:
        """Initialize the calculator with result set to 0."""
        self.result: float = 0.0

    def add(self, value: float) -> "Calculator":
        """
        Add a value to the current result.

        Args:
            value: The numeric value to add

        Returns:
            The calculator instance for method chaining

        Raises:
            TypeError: If value is not a number
        """
        if not isinstance(value, (int, float)):
            raise TypeError("Value must be a number")
        self.result += value
        return self

    def get_result(self) -> float:
        """
        Get the current result.

        Returns:
            The current result value
        """
        return self.result

    def reset(self) -> None:
        """Reset the calculator to 0."""
        self.result = 0.0


def calculate_sum(numbers: List[float]) -> float:
    """
    Calculate the sum of a list of numbers.

    Args:
        numbers: List of numbers to sum

    Returns:
        The sum of all numbers

    Raises:
        ValueError: If the input is not a list
    """
    if not isinstance(numbers, list):
        raise ValueError("Input must be a list")

    return sum(numbers)


def main() -> None:
    """Main function demonstrating usage."""
    calc = Calculator()
    numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
    total = calculate_sum(numbers)

    print(f"Sum: {total}")

    calc.add(10).add(20).add(30)
    print(f"Calculator result: {calc.get_result()}")


if __name__ == "__main__":
    main()
