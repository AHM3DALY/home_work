/*
Given an array of integers nums and an integer target, 
return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, 
and you may not use the same element twice.
*/

void main() {
  var nums = [2, 7, 11, 15];
  var target = 9;

  var result = twoSum(nums, target);
  print(result); // [0, 1]
}

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> numMap = {};
  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (numMap.containsKey(complement)) {
      return [numMap[complement]!, i];
    }
    numMap[nums[i]] = i;
  }
  return [];
}
