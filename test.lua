-- import the json module

local json = require('json')

local foo = json.decode([[
            {"name" : "lol", "age" : -1.5e+06, "foo" : ["bar", true, null]}
            ]])
foo.x = 'x'
-- foo[1] = 'hossa'
-- foo[2] = 'rossa'

print(foo.age)    -- -1500000
print(foo.name)   -- lol
print(foo.foo[1]) -- bar
print(foo.foo[2]) -- true
print(foo.foo[3]) -- null
print(json.isnull(foo.foo[3])) -- true
foo.foox = "omg :D"
foo.theNull = json.null
foo.itIs = true
foo.itIsNot = false
foo.isNil = nil
foo.a = 'a'

foo.subtable = {
	a = 'one',
	b = 'two'
}

local a = {
	test = 'hello',
	test2 = 'world'
}

foo.nested = {
	deeper = {
		name = 'Miller',
		location = 'Brooklyn'
	},
}

-- foo.nested.anotherfoo = foo
a.myself = a

local str = json.encode(foo)
print(str)

local foo2 = json.decode(str)

print(json.encode(foo2)) -- {"name":"lol",age:-1500000,"foo":"omg :D"}
print(json.encode(nil))
print(json.encode(function () print('foo') end))

print(json.encode {{a=1},{b=2}})
