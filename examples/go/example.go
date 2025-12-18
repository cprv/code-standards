package main

import (
	"fmt"
)

// Calculator represents a simple calculator
type Calculator struct {
	result float64
}

// NewCalculator creates a new Calculator instance
func NewCalculator() *Calculator {
	return &Calculator{result: 0.0}
}

// Add adds a value to the current result
func (c *Calculator) Add(value float64) *Calculator {
	c.result += value
	return c
}

// GetResult returns the current result
func (c *Calculator) GetResult() float64 {
	return c.result
}

// Reset resets the calculator to 0
func (c *Calculator) Reset() {
	c.result = 0.0
}

// CalculateSum calculates the sum of a slice of numbers
func CalculateSum(numbers []float64) float64 {
	sum := 0.0
	for _, num := range numbers {
		sum += num
	}
	return sum
}

func main() {
	calc := NewCalculator()
	numbers := []float64{1.0, 2.0, 3.0, 4.0, 5.0}
	sum := CalculateSum(numbers)

	fmt.Printf("Sum: %.2f\n", sum)

	calc.Add(10).Add(20).Add(30)
	fmt.Printf("Calculator result: %.2f\n", calc.GetResult())
}
