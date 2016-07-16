require "test_helper"

describe UsersController do
  it "should get index" do
    get users_index_url
    value(response).must_be :success?
  end

  it "should get new" do
    get users_new_url
    value(response).must_be :success?
  end

  it "should get cretae" do
    get users_cretae_url
    value(response).must_be :success?
  end

end
