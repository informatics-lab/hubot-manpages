chai = require "chai"
sinon = require "sinon"
chai.use require "sinon-chai"

expect = chai.expect

describe "manpages", ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()
      http: ->
        get: ->
          sinon.spy()

    require("../src/manpages")(@robot)

  it "registers a respond listener", ->
    expect(@robot.respond).to.have.been.calledWith(/mp search (.+)/i)
    expect(@robot.respond).to.have.been.calledWith(/mp random/i)
