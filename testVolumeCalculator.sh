#!/bin/bash

source ./volumeCalculator.sh

pass_count=0
fail_count=0

pass() {
  echo "✅ Test passed: $1"
  ((pass_count++))
  return 0
}

fail() {
  echo "❌ Test failed: $1"
  ((fail_count++))
  return 0
}

testCalculateVolumeRectangularPrism() {
  result=$(calculate_volume 2 3 4)
  expected="24"
  [[ "$result" == "$expected" ]] && pass "2*3*4 = 24" || fail "Expected 24 but got $result"
}

testNegativeNumbers() {
    result=$(calculate_volume -1 2 3)
    expected="Error: Dimensions must be positive numbers."
    [[ "$result" == "$expected" ]] && pass "Negative input throws error" || fail "Negative input test failed"
}

testForZero() {
    result=$(calculate_volume 0 2 3)
    expected="Error: At least one dimension is zero. Shape is no longer a 3D shape therefore volume is zero."
    [[ "$result" == "$expected" ]] && pass "Zero input throws error" || fail "Zero input test failed"
}

testEmptyInput() {
    result=$(calculate_volume "" 2 3)
    expected="Error: At least one dimension is empty."
     [[ "$result" == "$expected" ]] && pass "Empty input (length) throws error" || fail "Expected error for empty input but got '$result'"

}

testStringValues() {
    expected="Error: Dimensions must be positive numbers."
    result=$(calculate_volume "abc" 2 3)
    [[ "$result" == "$expected" ]] && pass "String input (length) throws error" || fail "Expected error for string input but got '$result'"
}

# Run tests
testCalculateVolumeRectangularPrism
testNegativeNumbers
testForZero
testEmptyInput
testStringValues

echo
echo "✅ Passed: $pass_count"
echo "❌ Failed: $fail_count"