# Underscore.number

## Functions

**sign** _.num.sign(num)

Returns a sign of `num` as `-1`, `0` or `1`.

```javascript
_.num.sign(-10); // -1
_.num.sign(0); // 0
_.num.sign(20); // 1
```

**pinch** _.num.pinch(num, min, max)

Puts `num` in a range of `min` to `max`.

Returns `min` if `num` is smaller than `min`, `max` if `num` is larger than `max`, and `num` itself if it’s already in a range of `min` to `max`.

```javascript
_.num.pinch(12, 0, 10); // 10
_.num.pinch(5, 0, 10); // 5
_.num.pinch(-3, 0, 10); // 0
```

**loop** _.num.loop(num, min, max)

Converts `num` as it is in a circular range of `min` to `max` (excluding `max`).

Considering the expression, `_.num.loop(480, 0, 360)` as an angle calculation, it converts 480 degrees in a range of 0 to 360 degrees.

```javascript
_.num.loop(480, 0, 360); // 120
_.num.loop(-480, 0, 360); // 240
_.num.loop(180, 0, 360); // 180
_.num.loop(0, 0, 360); // 0
_.num.loop(360, 0, 360); // 360
_.num.loop(-480, -180, 180); // -120
```

**clockwise** _.num.clockwise(from, to, range)

Returns the clockwise distance from `from` to `to` as they are in a circle of `range`. Useful to calculate angles.

```javascript
_.num.clockwise(0, 100, 360); // 100
_.num.clockwise(0, -100, 360); // 260
_.num.clockwise(100, 100, 360); // 0
_.num.clockwise(101, 100, 360); // 359
```

**nearer** _.num.nearer(from, to, range)

Returns the nearer distance from `from` to `to` as they are in a circle of `range`. Useful to calculate angles.

```javascript
_.num.nearer(0, 100, 360); // 100
_.num.nearer(0, -100, 360); // -100
_.num.nearer(100, 100, 360); // 0
_.num.nearer(101, 100, 360); // -1
```

**average** _.num.average(\*nums)

Returns an average of `nums`

```javascript
_.num.average(1, 2, 3, 4); // 2.5
```

**round** _.num.round(num, level)

Rounds `num` by specified `level`.

```javascript
_.num.round(123.456, -3); // 0
_.num.round(123.456, -2); // 100
_.num.round(123.456, -1); // 120
_.num.round(123.456, 0); // 123 (same as Math.round(123.456))
_.num.round(123.456, 1); // 123.5
_.num.round(123.456, 2); // 123.46
_.num.round(123.456, 3); // 123.456
```

**between** _.num.between(from, to, ratio)

```javascript
_.num.between(0, 100, 0); // 0
_.num.between(0, 100, 0.5); // 50
_.num.between(0, 100, 1); // 100
```

**add** _.num.add(\*nums)

Adds `nums`.

```javascript
_.num.add(1, 2, 3, 4); // 10
```

**sub** _.num.sub(base, \*nums)

Subtracts `nums` from `base`.

```javascript
_.num.sub(10, 1, 2, 3); // 4
```

**mul** _.num.mul(\*nums)

Multiplies `nums`.

```javascript
_.num.mul(3, 4, 5); // 60
```

**div** _.num.div(base, \*nums)

Divides `base` by `nums`.

```javascript
_.num.div(16, 2, 2); // 4
```

**random** _.num.random([a[, b]])

Returns a random number.

```javascript
_.num.random(); // (same as Math.random())
_.num.random(5); // random number in range of 0 to 5 (excluding 5)
_.num.random(2, 4); // random number in range of 2 to 4 (excluding 4)
```

**radToDeg** _.num.radToDeg(radians)

Converts radians to degrees.

```javascript
_.num.radToDeg(Math.PI); // 180
```

**degToRad** _.num.degToRad(degrees)

Converts degrees to radians.

```javascript
_.num.degToRad(180); // 3.141592653589793 (Math.PI)
```