-- Recusrive functions in LUA

-- Recursive function for factorial computation of n
function factorial(n)
    -- Base case
    if n == 0 then
        return 1
    -- Recursive case
    else
        return n * factorial(n - 1)
    end
end

-- Take an user input
io.write("Let k: ")
k = tonumber(io.read())

local MAX = 20
if k > MAX then
    print("k must be smaller of equal to")
    os.exit(1)
else
    -- Compute factorials of 1 to k
    for i = 1, k do
        print(i, "-", factorial(i))
    end
end
os.exit(0)