require "test_helper"

class JokeTest < ActiveSupport::TestCase
  test "content length" do
    aa = Joke.new(content: "hi")
    assert !aa.valid?
    bb = Joke.new(content: "hello")
    assert bb.valid?
  end
end
