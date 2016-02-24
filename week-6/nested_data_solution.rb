# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
p array[1][1][2][0]



# # ============================================================

# # Hole 2
# # Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================

p hash[:outer][:inner]["almost"][3]

# # ============================================================


# # Hole 3
# # Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================

p nested_data[:array][1][:hash]

# # ============================================================


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

p 
number_array.map! {|number|
	if number.kind_of?(Integer)
		p number + 5
	else number.kind_of?(Array)
		p number.map! { |inner| inner + 5}
	end
}



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# What are some general rules you can apply to nested arrays
# One needs to call on an outer element before you can call an inner element

# What are some ways you can iterate over nested arrays?
# One can use an each method, or or an if else method

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# Mostly used old methods, they seemed to get the job done simmply.