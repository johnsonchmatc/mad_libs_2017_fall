require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new
    @user.email = "bart@simpsons.com"
    @user.password = 'foobar'
    @user.password_confirmation = 'foobar'
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "user should have an email" do
    @user.email = nil
    assert_not @user.valid?
  end

  test "user email must be longer than 5 characters" do
    assert @user.valid?
  end

  test "an email less than 5 characters is not valid" do
    @user.email = "test"
    assert_not @user.valid?
  end

end
