_n = require '../src/underscore.number.coffee'
expect = require('chai').expect

describe 'underscore.number', ->
	it 'sign', ->
		expect(_n.sign 10).to.equal 1
		expect(_n.sign 0).to.equal 0
		expect(_n.sign -10).to.equal -1

	it 'pinch', ->
		expect(_n.pinch 5, -10, 10).to.equal 5
		expect(_n.pinch -20, -10, 10).to.equal -10
		expect(_n.pinch 20, -10, 10).to.equal 10

	it 'loop', ->
		expect(_n.loop 0, 0, 360).to.equal 0
		expect(_n.loop 360, 0, 360).to.equal 0
		expect(_n.loop 450, 0, 360).to.equal 90
		expect(_n.loop -120, 0, 360).to.equal 240

	it 'clockwise', ->
		expect(_n.clockwise 0, 100, 360).to.equal 100
		expect(_n.clockwise 0, -100, 360).to.equal 260
		expect(_n.clockwise 100, 100, 360).to.equal 0
		expect(_n.clockwise 101, 100, 360).to.equal 359

	it 'nearer', ->
		expect(_n.nearer 0, 100, 360).to.equal 100
		expect(_n.nearer 0, -100, 360).to.equal -100
		expect(_n.nearer 100, 100, 360).to.equal 0
		expect(_n.nearer 101, 100, 360).to.equal -1

	it 'average', ->
		expect(_n.average 1, 2, 3, 4, 5).to.equal 3
		expect(_n.average 1).to.equal 1

	it 'round', ->
		expect(_n.round 123.456).to.equal 123
		expect(_n.round 123.456, -3).to.equal 0
		expect(_n.round 123.456, -2).to.equal 100
		expect(_n.round 123.456, -1).to.equal 120
		expect(_n.round 123.456, 0).to.equal 123
		expect(_n.round 123.456, 1).to.equal 123.5
		expect(_n.round 123.456, 2).to.equal 123.46
		expect(_n.round 123.456, 3).to.equal 123.456

	it 'between', ->
		expect(_n.between 0, 10, 0).to.equal 0
		expect(_n.between 0, 10, 0.5).to.equal 5
		expect(_n.between 0, 10, 1).to.equal 10
		expect(_n.between 10, 0, 0).to.equal 10
		expect(_n.between 10, 0, 0.5).to.equal 5
		expect(_n.between 10, 0, 1).to.equal 0

	it 'add', ->
		expect(_n.add()).to.equal 0
		expect(_n.add 5).to.equal 5
		expect(_n.add 5, 10).to.equal 15
		expect(_n.add 5, 10, 20).to.equal 35

	it 'sub', ->
		expect(-> _n.sub()).to.throws()
		expect(_n.sub 0).to.equal 0
		expect(_n.sub 5).to.equal -5
		expect(_n.sub 5, 2).to.equal 3
		expect(_n.sub 5, 2, 10).to.equal -7

	it 'mul', ->
		expect(_n.mul()).to.equal 1
		expect(_n.mul 5).to.equal 5
		expect(_n.mul 5, 10).to.equal 50
		expect(_n.mul 5, 10, 20).to.equal 1000

	it 'div', ->
		expect(-> _n.div()).to.throws()
		expect(_n.div 0).to.equal Infinity
		expect(_n.div 5).to.equal 0.2
		expect(_n.div 5, 10).to.equal 0.5
		expect(_n.div 5, 10, 20).to.equal 0.025

	it 'random', ->
		for i in [0...10000] then expect(_n.random()).to.be.at.least(0).and.below 1
		for i in [0...10000] then expect(_n.random 5).to.be.at.least(0).and.below 5
		for i in [0...10000] then expect(_n.random 5, 10).to.be.at.least(5).and.below 10

	it 'radToDeg', ->
		expect(_n.radToDeg Math.PI).to.equal 180

	it 'degToRad', ->
		expect(_n.degToRad 180).to.equal Math.PI
