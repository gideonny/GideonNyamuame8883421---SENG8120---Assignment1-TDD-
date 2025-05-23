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

#testNegativeNumbers() {
 # result=$(calculate_volume -1 2 3)
 # [[ "$result" == "Error: Dimensions must be positive numbers." ]] && pass "Negative input throws error" || fail "Negative input test failed"
#}

#testForZero() {
 # result=$(calculate_volume 0 2 3)
  #[[ "$result" == "Error: Dimensions must be positive numbers." ]] && pass "Zero input throws error" || fail "Zero input test failed"
#}

#testLargeNumbers() {
 # result=$(calculate_volume 100000 100000 100000)
  #expected="1000000000000000"
  #[[ "$result" == "$expected" ]] && pass "Large number test" || fail "Expected $expected but got $result"
#}

#testDecimalNumbers() {
 # result=$(calculate_volume 2.5 3.0 4.0)
  #expected="30.0"
  #[[ "$(printf "%.1f" "$result")" == "$expected" ]] && pass "Decimal test passed" || fail "Expected $expected but got $result"
#}

# Run tests
testCalculateVolumeRectangularPrism
#testNegativeNumbers
#testForZero
#testLargeNumbers
#testDecimalNumbers

echo
echo "✅ Passed: $pass_count"
echo "❌ Failed: $fail_count"