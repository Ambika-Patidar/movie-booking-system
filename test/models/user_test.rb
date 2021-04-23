require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should not save user without email and password' do
    user = User.new
    assert_not user.save
  end

  test 'should not save user without password' do
    user = User.new(email: 'tester@yopmail.com')
    assert_not user.save
  end
  
  test 'should not save user without email' do
    user = User.new(password: 'tester@123')
    assert_not user.save
  end

  test 'should not save user with invalid email' do
    user = User.new(email: 'tester')
    assert_not user.save
  end 

  test 'should not save user with password chracters less than 6' do
    user = User.new(email: 'tester@yopmail.com', password: 'test')
    assert_not user.save
  end

  test 'should save user with valid email and password' do
    user = User.new(email: 'tester@yopmail.com', password: 'tester@123')
    assert user.save
  end
end
