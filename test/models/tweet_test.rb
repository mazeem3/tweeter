require "test_helper"

describe Tweet do
  let(:tweet) { Tweet.new }

  it "must be valid" do
    value(tweet).must_be :valid?
  end
end
