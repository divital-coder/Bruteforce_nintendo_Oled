tested_codes = [9239, 1084, 2154, 3185, 6127, 9909, 2786, 1111, 0000, 1234, 7286, 7564, 8123, 1379, 0852, 2580, 1470, 2013, 2006, 4628, 1436, 4253, 7890, 1590, 3179, 4298, 3525, 2282, 1701, 7229, 8765, 3969, 0004, 0010, 8040, 4028, 5555, 4444, 2424, 0108, 1001, 3691, 
                7847, 9025, 8624, 7114, 7223, 7389, 3806, 1529, 1688, 6329, 8911, 4726, 1816, 0665, 7958, 4427, 2613, 4442]

function try_new_code(code)
    if code in tested_codes
        println("Try another code, dont waste this try, u tried this already")
    else
        println("Try this code , u havent tried this code yet.")
        add_code_to_list(code)
  end
end


function add_code_to_list(code)
    push!(tested_codes,code)
    println(tested_codes)
end

user_code = readline()
user_code_numeric = parse(Int64,user_code)
try_new_code(user_code_numeric)
