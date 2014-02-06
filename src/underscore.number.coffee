_n = {}



_n.sign = sign = (num) ->
	if num > 0
		1
	else if num < 0
		-1
	else
		0

_n.pinch = pinch = (target, min, max) ->
	if min > max
		[min, max] = [max, min]

	if target < min
		min
	else if target > max
		max
	else
		target

_n.loop = _loop = (target, min, max) ->
	if min is max
		min
	else
		if min > max
			[min, max] = [max, min]

		vol = max - min
		val = target - max

		while val < 0
			val += vol
		(val % vol) + min

_n.clockwise = clockwise = (from, to, range) ->
	while to > from
		to -= range
	while to < from
		to += range
	return to - from

_n.nearer = nearer = (from, to, range) ->
	c = clockwise(from, to, range)
	if c >= range * 0.5 then c - range else c

_n.average = average = (nums...) ->
	add(nums...) / nums.length

_n.round = round = (num, level = 0) ->
	e = Math.pow 10, level
	Math.round(num * e) / e

_n.between = between = (from, to, ratio) ->
	from + (to - from) * ratio

# add/sub/mul/div
_n.add = add = (nums...) ->
	n = 0
	n += num for num in nums
	n

_n.sub = sub = (base, nums...) ->
	throw new Error if base is undefined

	if nums.length
		base -= num for num in nums
		base
	else
		-base

_n.mul = mul = (nums...) ->
	n = 1
	n *= num for num in nums
	n

_n.div = div = (base, nums...) ->
	throw new Error if base is undefined

	if nums.length
		base /= num for num in nums
		base
	else
		1 / base

# random
_n.random = random = (nums...) ->
	if nums.length is 0
		Math.random()
	else if nums.length is 1
		Math.random() * nums[0]
	else
		Math.random() * (nums[1] - nums[0]) + nums[0]

# radian/degree
_n.radToDeg = radToDeg = (rad) ->
	rad * 57.29577951308232

_n.degToRad = degToRad = (deg) ->
	deg * 0.017453292519943295



_n.exports = ->
	r = {}
	for k, v of _n
		r[k] = v
	r



if module?.exports?
	module.exports = _n
else
	@_ ||= {}
	oldNumber = @_.number
	oldNum = @_.num
	@_.number = @_.num = _n
	_n.noConflict = =>
		@_.number = oldNumber
		@_.num = oldNum
		_n