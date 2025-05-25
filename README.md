# 📦 Volume Calculator — Rectangular Prism

## 🧪 Assignment #1: Unit Tests with Test Driven Development (TDD)

This project is a simple Bash script that calculates the volume of a rectangular prism using the formula:

> **Volume = Length × Width × Height**

It was developed using a Test Driven Development (TDD) approach as part of a class assignment.

---

## 📁 Project Structure

```
├── volumeCalculator.sh        # Main script for calculating volume
├── testVolumeCalculator.sh    # Unit tests for volumeCalculator.sh
└── README.md                  # This file
```

---

## ✅ Features Implemented

- Calculates the volume of a rectangular prism.
- Handles invalid inputs including:
  - Negative numbers
  - Zero values
  - Empty input
  - String inputs
- Clear and descriptive error messages
- 5 Unit tests implemented using Bash scripting

---

## ⚙️ How to Run

### 1. Make scripts executable:
```bash
chmod +x volumeCalculator.sh
chmod +x testVolumeCalculator.sh
```

### 2. Run the test script:
```bash
./testVolumeCalculator.sh
```

You will see the result of each test case, along with a summary of total passed and failed tests.

---

## 🧪 Implemented Tests

| Test Description                     | Purpose                                          |
|-------------------------------------|--------------------------------------------------|
| Valid input                         | Checks volume for 2×3×4                          |
| Negative input                      | Ensures negative numbers are rejected            |
| Zero input                          | Ensures shape with zero dimension is rejected    |
| Empty input                         | Ensures missing input is handled gracefully      |
| String input                        | Rejects non-numeric (e.g. "abc") input           |

---

## 🧪 Future Tests (Not Implemented Due to Time)

1. Large number inputs (e.g. `100000 × 100000 × 100000`)
2. Decimal values (e.g. `2.5 × 3.0 × 4.0`)
3. Leading/trailing spaces in input
4. Scientific notation input
5. Excess arguments (e.g. `3 × 2 × 5 x 6`)

---

## 🧠 Lessons Learned

- Writing tests first forces better thinking around edge cases.
- Bash requires careful type handling (e.g. distinguishing strings from numbers).
- Proper validation and clear error messaging improve script usability.

---

## 📌 Submission Details

- **Student**: Gideon Nyamuame  
- **Instructor**: Sadaf Najam 
- **Course**: SENG 8120 
- **Date**: 24/05/2025 
- **GitHub Repository**: https://github.com/gideonny/GideonNyamuame8883421---SENG8120---Assignment1-TDD-

---

## 📜 License

This project is for educational purposes only.
