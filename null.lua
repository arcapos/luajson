local json = require 'json'

local d = {
	a = 42,
	b = json.null
}

print(json.encode(d))

