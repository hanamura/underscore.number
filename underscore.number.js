(function() {
  var add, average, between, clockwise, degToRad, div, mul, nearer, oldNum, oldNumber, pinch, radToDeg, random, round, sign, sub, _loop, _n,
    __slice = [].slice,
    _this = this;

  _n = {};

  _n.sign = sign = function(num) {
    if (num > 0) {
      return 1;
    } else if (num < 0) {
      return -1;
    } else {
      return 0;
    }
  };

  _n.pinch = pinch = function(target, min, max) {
    var _ref;
    if (min > max) {
      _ref = [max, min], min = _ref[0], max = _ref[1];
    }
    if (target < min) {
      return min;
    } else if (target > max) {
      return max;
    } else {
      return target;
    }
  };

  _n.loop = _loop = function(target, min, max) {
    var val, vol, _ref;
    if (min === max) {
      return min;
    } else {
      if (min > max) {
        _ref = [max, min], min = _ref[0], max = _ref[1];
      }
      vol = max - min;
      val = target - max;
      while (val < 0) {
        val += vol;
      }
      return (val % vol) + min;
    }
  };

  _n.clockwise = clockwise = function(from, to, range) {
    while (to > from) {
      to -= range;
    }
    while (to < from) {
      to += range;
    }
    return to - from;
  };

  _n.nearer = nearer = function(from, to, range) {
    var c;
    c = clockwise(from, to, range);
    if (c >= range * 0.5) {
      return c - range;
    } else {
      return c;
    }
  };

  _n.average = average = function() {
    var nums;
    nums = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    return add.apply(null, nums) / nums.length;
  };

  _n.round = round = function(num, level) {
    var e;
    if (level == null) {
      level = 0;
    }
    e = Math.pow(10, level);
    return Math.round(num * e) / e;
  };

  _n.between = between = function(from, to, ratio) {
    return from + (to - from) * ratio;
  };

  _n.add = add = function() {
    var n, num, nums, _i, _len;
    nums = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    n = 0;
    for (_i = 0, _len = nums.length; _i < _len; _i++) {
      num = nums[_i];
      n += num;
    }
    return n;
  };

  _n.sub = sub = function() {
    var base, num, nums, _i, _len;
    base = arguments[0], nums = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
    if (base === void 0) {
      throw new Error;
    }
    if (nums.length) {
      for (_i = 0, _len = nums.length; _i < _len; _i++) {
        num = nums[_i];
        base -= num;
      }
      return base;
    } else {
      return -base;
    }
  };

  _n.mul = mul = function() {
    var n, num, nums, _i, _len;
    nums = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    n = 1;
    for (_i = 0, _len = nums.length; _i < _len; _i++) {
      num = nums[_i];
      n *= num;
    }
    return n;
  };

  _n.div = div = function() {
    var base, num, nums, _i, _len;
    base = arguments[0], nums = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
    if (base === void 0) {
      throw new Error;
    }
    if (nums.length) {
      for (_i = 0, _len = nums.length; _i < _len; _i++) {
        num = nums[_i];
        base /= num;
      }
      return base;
    } else {
      return 1 / base;
    }
  };

  _n.random = random = function() {
    var nums;
    nums = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
    if (nums.length === 0) {
      return Math.random();
    } else if (nums.length === 1) {
      return Math.random() * nums[0];
    } else {
      return Math.random() * (nums[1] - nums[0]) + nums[0];
    }
  };

  _n.radToDeg = radToDeg = function(rad) {
    return rad * 57.29577951308232;
  };

  _n.degToRad = degToRad = function(deg) {
    return deg * 0.017453292519943295;
  };

  _n.exports = function() {
    var k, r, v;
    r = {};
    for (k in _n) {
      v = _n[k];
      r[k] = v;
    }
    return r;
  };

  if ((typeof module !== "undefined" && module !== null ? module.exports : void 0) != null) {
    module.exports = _n;
  } else {
    this._ || (this._ = {});
    oldNumber = this._.number;
    oldNum = this._.num;
    this._.number = this._.num = _n;
    _n.noConflict = function() {
      _this._.number = oldNumber;
      _this._.num = oldNum;
      return _n;
    };
  }

}).call(this);
