------------- easy #1 ---------

function concatenate(a1, a2)
    local concated = {}

    for i = 1, #a1 do
        concated[#concated + 1] = a1[i]
    end

    for i = 1, #a2 do
        concated[#concated + 1] = a2[i]
    end

    return concated
end

local concated = concatenate({ 1, 2, 3 }, { 9, 10, 11 })
local expected = { 1, 2, 3, 9, 10, 11 }

for i = 1, #concated do
    assert(concated[i] == expected[i])
end

------------ medium #2 ---------------

Queue = {}

function Queue:new (items)
   local obj = items or {}
   setmetatable(obj, self)
   self.__index = self
   return obj
end

function Queue:add (item)
    self[#self + 1] = item 
end

function Queue:remove ()
    if #self > 0 then
        popped = self[1]
        table.remove(self, 1)
        return popped
    else
        return nil
    end
end

q = Queue:new({1})
q:add(6)

assert(#q == 2)
assert(q:remove() == 1)
assert(#q == 1)
assert(q:remove() == 6)
assert(#q == 0)
assert(q:remove() == nil)


------------------- hard #1 ------------------
function retry (count, body)
    if count == 0 then
        print "retry failed to many times"
        return
    end

    generator = coroutine.create(body)
    _, result = coroutine.resume(generator)

    if type(result) == 'string' then
        count = count - 1
        return retry(count, body)
    else
        return result
    end
end

math.randomseed(os.time())

retry(
    5,
    function()
        if math.random() > 0.2 then
            coroutine.yield('Something bad happened')
        end
        
        print('Succeeded')
    end
)


