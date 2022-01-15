-- Displaying Ascii Art in Lua

-- Colors
RED = "\27[31m"
GREEN = "\27[32m"
YELLOW = "\27[33m"
BLUE = "\27[34m"
RESET = "\27[0m"

colors = {RED, GREEN, YELLOW, BLUE}

-- Load an ascii art file to a string
function load_ascii_art(path)
    local file = io.open(path, 'r') -- Assuming that the file exists for brevity
    local ascii_art = file:read('*all')
    file:close()
    return ascii_art
end

-- Await the console
local clock = os.clock
function sleep(n)  -- seconds
   local t0 = clock()
   while clock() - t0 <= n do
   end
end

-- Dispalay an ascii art
function display_ascii_art(ascii_art, n)
    col_idx = 1
    for i = 1, n do
        os.execute('clear')
        print(colors[col_idx] .. ascii_content .. RESET)
        sleep(0.5)
        col_idx = col_idx + 1
        if col_idx > #colors then
            col_idx = 1
        end
    end
end

-- Main body
ascii_content = load_ascii_art('./src/ascii-art.txt')
display_ascii_art(ascii_content, 10)
