# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def create_hash(int)
    new_hash = {}
    1.upto int do |size|
        next if size.even?
        arr = Array.new(size) {|n| n + 1 }
        even_arr = arr.select {|n| n.even? }
        new_hash[size] = even_arr
    end
    new_hash
end

