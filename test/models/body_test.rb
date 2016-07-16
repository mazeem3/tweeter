require "test_helper"

describe Body do
  let(:body) { Body.new }

  it "must be valid" do
    value(body).must_be :valid?
  end
end
