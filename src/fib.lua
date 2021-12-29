io.write('Let n = ')
n = tonumber(io.read())
io.write('\n')

-- Create a function that will compose a fibonacci sequences
-- until n is reached

function composeFibonacciSequence(n)
    local i = 0
    local a, b = 0, 1
    local seqTable = {}
    while a <= n do
        seqTable[i] = a
        a, b = b, a + b
        i = i + 1
    end
    return seqTable
end

-- Display the sequence in a formatted way
function parseSequence(t)
    local GREEN = "\27[32m"
    local RESET = "\27[0m"
    for i = 0, #t do
        io.write(i + 1, ': ', GREEN,
        t[i], ' ', RESET, '\n')
    end
end

-- Assign composed sequence to a variable and parse it
sequence = composeFibonacciSequence(n)
parseSequence(sequence)