--1
product list =
  if | list == [] -> 0
     | otherwise -> List.foldl * 1 list

--2
allX list = List.map .x list

--3
person = { name="a person", age=20, address={ street="1st avenue", city="london" }}

--4
multiply a b = a * b

--5
(multiply 6) 8

--6
olderThan16 people = List.filter (\person -> person.age > 16) people

--7
olderThan16 people = List.filter (\person -> 
    case person.age of
        Nothing -> False
        Just age -> age > 16 ) people
