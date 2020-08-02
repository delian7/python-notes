# iteration # 1

def two_sums(nums, target)

  result = Float::INFINITY
  orig_count = nums.count

  first_index = 0
  second_index = 0
  current_count = 0

    nums.each_with_index do |num, index|

      first_index = index

      nums[index+1..nums.count].each_with_index do |num_2, index_2|

        second_index = index_2 + 1

        result = num + num_2
        break if result == target
      end

      break if result == target
      current_count += 1
    end

  [first_index, second_index + current_count]

end

# interation 2

def two_sums(nums, target)
  iterations = 0
  first_index = 0
  second_index = 0
  found = false

  nums.each_with_index do |num, index|
    first_index = index
    nums[index+1..nums.count].each_with_index do |num_2, index_2|
      second_index = index_2 + 1
      found = true if target - num_2 == num
      break if found
    end
    break if found
    iterations += 1
  end

  [first_index, second_index + iterations]
end

# best solution

def two_sums(nums, target)

  hash = {}

  nums.each_with_index do |num, index|
    if hash[target - num]
      return hash[target - num], index
    end

    hash[num] = index

  end
end

p two_sums([2, 7, 11, 15], 13)

p two_sums([0,1], 1)

p two_sums([12,13,3,2,5,10], 12)

p two_sums([2,7,11,15], 9)