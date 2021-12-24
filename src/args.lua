-- Lua does not use argc, argv, instead a global table (arg) is used.

-- ===================================================================

-- Determining the number of command-line argumnets
function computeArgLength()
    io.write("Number of command-line arguments: ", #arg, "\n")
end

-- Iterating over the command-line arguments
function computeArgs()
    for i = 1, #arg do -- Avoid base script name
        io.write("Arg n. ", i, ": ", arg[i], "\n")
    end
end

-- ===================================================================

-- Invoke the functions
computeArgLength()
computeArgs()
os.exit(0)