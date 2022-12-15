# These exercises will initially recap basic hash and array methods
# Then they'll go a bit deeper on both topics
# Some exercises will require your knowledge of both arrays and hashes

# Arrays I

# fourth_element
# takes one array as an arg
# returns the fourth element
def fourth_element(arr)
    return arr[3]
end

# average
# takes an array of numbers
# returns the average (the mean)
def average(arr)
    return arr.sum / arr.length
end

# lowest_squared
# takes an array of numbers
# returns the lowest number squared
def lowest_squared(arr)
    arr2 = arr.sort[0]
    return arr2 * arr2
end

# highest_squared
# takes an array of numbers
# returns the highest number squared
def highest_squared(arr)
    arr2 = arr.sort[-1]
    return arr2 * arr2
end

# Hashes I

# values_summed
# takes a hash where the values are numbers
# returns the total of all the values
def values_summed(hash)
    hash.values.sum
end

# first_two_keys
# takes a hash
# returns the first two keys
def first_two_keys(hash)
    hash.keys.first(2)
end

# first_two_values
# takes a hash
# returns the first two values
def first_two_values(hash)
    hash.values.first(2)
end

# Arrays II

# starts_with_a
# takes one array as an arg
# returns only elements starting with 'a'
def starts_with_a(arr)
    arr.select {|element| element.to_s.start_with?('a') }
end

# starts_with_a_vowel
# takes an array as an arg
# returns only the elements that start with a vowel
def starts_with_a_vowel(arr)
    arr.select {|element| element.to_s.start_with?('a','e','i','o','u')}
end

# reverse_each_element
# takes an array as an arg
# reverses each element
# E.g. when the arg is ['one', 'two']
# it returns ['eno', 'owt']
def reverse_each_element(arr)
    arr.map {|element| element.to_s.reverse}
end

# sort_by_last_letter
# takes one array as an arg
# returns the array, sorted by the last letter
def sort_by_last_letter(arr)
    arr2 = arr.map {|element| element.to_s.reverse}
    arr2.sort!
    arr2.map {|element| element.to_s.reverse}
end

# greater_than_5
# takes one array as an arg
# returns only numbers greater than 5
def greater_than_5(arr)
    arr2 = arr.select! {|element| element > 5}
    return arr2
end

# greater_than
# takes one array and one number as args
# returns only the elements that are greater than the number provided
def greater_than(arr, num)
    arr.select! {|element| element > num}
end

# less_than
# takes one array and one number as args
# returns only the elements that are less than the number provided
def less_than(arr, num)
    arr.select! {|element| element < num}
end

# words_shorter_than
# takes one array and one number as args
# returns only the elements than have fewer characters than the number provided
def words_shorter_than(arr, num)
    arr.select {|element| element.to_s.length < num}
end

# all_above?
# takes an array and a number as args
# returns true if all elements are greater than the number provided
def all_above?(arr, num)
    arr.all? {|element| element > num}
end

# all_below?
# takes an array and a number as args
# returns true if all elements are less than the number provided
def all_below?(arr, num)
    arr.all? {|element| element < num}
end

# multiply_each_by
# takes one array and one number as args
# returns a new array with each element multiplied by the number provided
def multiply_each_by(arr, num)
    arr.map {|element| element * num}
end

# Hashes II

# where_value_below
# takes a hash and a number as args
# returns key value pairs where the value is less than the number provided
def where_value_below(hash, num)
    hash.select {|key, value| value < num}
end

# where_key_starts_with
# takes a hash and a letter as args
# returns key value pairs where the key starts with the letter provided
def where_key_starts_with(hash, string)
    hash.select {|key, value| key.start_with?(string)}
end

# add_key_value_pair
# takes a hash, a key and a value as args
# returns a the hash with the new key and value added
def add_key_value_pair(hash, key, value)
    hash.store(key, value)
    return hash
end

# sort_by_key
# takes a hash
# sorts key-value pairs by key
def sort_by_key(hash)
    hash.sort.to_h
end

# sort_by_value
# takes a hash
# sorts key-value pairs by value
def sort_by_value(hash)
    hash2 = hash.sort_by {|key, value| value}
    hash2.to_h
end