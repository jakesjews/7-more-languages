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

concated = concatenate({ 1, 2, 3 }, { 9, 10, 11 })

for i = 1, #concated do
    print(concated[i])
end
