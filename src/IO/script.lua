--[[ 
    Reading IO in LUA
    Creating mail addresses from a database
    Michal Špano
]]

-- Read an input file
io.write("Input path: ")
inputPath = io.read()
inputFile = io.open(inputPath, "r")

-- Write to an output file
io.write("Output path: ")
outputPath = io.read()
outputFile = io.open(outputPath, "w")

-- Create a function to format emails
function separatorMethod(line)
    local separator = string.find(line, ';')
    local var1 = string.sub(line, 0, separator - 1)
    local var2 = string.sub(line, separator + 1, #line)
    local mail = var1 .. '.' .. var2 .. '@gmail.com'

    -- Return formatted mail address
    return mail
end

-- Write out
function writeOutput()
    local i = 0
    for line in inputFile:lines() do
        -- Do not parse initial header
        if i >= 1 then
            -- Write formatted mail addresses to specified path
            data = separatorMethod(line)
            outputFile:write(data, '\n')
        end
        i = i + 1
    end
end

-- Invoke write function
writeOutput()

-- Close files
inputFile:close()
outputFile:close()