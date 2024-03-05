tested_codes = [9239, 1084, 2154, 3185, 6127, 9909, 2786, 1111, 0000, 1234, 7286, 7564, 8123, 1379, 0852, 2580, 1470, 2013, 2006, 4628, 1436, 4253, 7890, 1590, 3179, 4298, 3525, 2282, 1701, 7229, 8765, 3969, 0004, 0010, 8040, 4028, 5555, 4444, 2424, 0108, 1001, 3691, 
                7847, 9025, 8624, 7114, 7223, 7389, 3806, 1529, 1688, 6329, 8911, 4726, 1816, 0665, 7958, 4427, 2613, 4442, 6969, 8224,6789,1113, 9629, 7637, 2000, 1992, 1993, 1975, 1986, 1982, 1048, 2500, 1500, 0606, 0909, 6248]

function try_new_code(code)
    if code in tested_codes
        println("Try another code, dont waste this try, u tried this already")
        return true
    else
        println("Try this code , u havent tried this code yet.")
        return false
  end
end


function add_code_to_list(code_array)
    append!(tested_codes,code_array)
    println(tested_codes)
end

number_buffer = []

number_of_times = 6
while number_of_times >= 1 
global number_of_times
user_code = readline()
if length(user_code) != 4
    println("you havent entered a Correct 4 DIGIT PIN, redo")
    user_code = readline()
end
user_code_numeric = parse(Int64,user_code)
value = try_new_code(user_code_numeric)
if !value
    push!(number_buffer,user_code_numeric)
    number_of_times -= 1
end
end

add_code_to_list(number_buffer)


function remove_duplicates(number_array)
  """
  The set function is removing the 0 prefixes from a smaller number such as
  0010 , 0004 
  since its vital to understand the fact that these number were tried, unique_array doesnt really matter right now.

  """
  unique_array = Set(number_array)  
  return collect(unique_array)
end

final_tested_codes_with_duplicates_removed = remove_duplicates(tested_codes)
#println(final_tested_codes_with_duplicates_removed)
