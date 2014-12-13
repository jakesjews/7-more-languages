function ends_in_3(num)
    return tostring(num):sub(-1) == '3'
end

function is_prime(num)
    for i = 2, num - 1 do
        if num % i == 0 then
            return false
        end
    end

    return true
end

function print_prime_ends_3(n)
    local i = 0
    local matches = {}

    while table.maxn(matches) < n do
        if ends_in_3(i) and is_prime(i) then
            table.insert(matches, i)
        end
        i = i + 1
    end

    return matches
end

function for_loop(a, b, f)
    while a <= b do
        f(a)
        a = a + 1
    end
end

function reduce(max, init, f)
    local acc = init
    for i = 1, max do
        acc = f(acc, i)
    end
    return acc
end

function factorial(n)
    return reduce(n, 1, function(acc, next)
        return acc * next
    end)
end

print(ends_in_3(10))
print(ends_in_3(3))
print(ends_in_3(13))

print(is_prime(4))
print(is_prime(7))
print(is_prime(13))
print(is_prime(20))

primes = print_prime_ends_3(3)
for i = 1, #primes do
    print(primes[i])
end

for_loop(1, 5, function(num)
    print(num)
end)

print(reduce(5, 0, function(previous, next)
    return previous + next
end))

print(factorial(5))


