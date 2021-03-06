require "test_helper"
require 'date'
require 'pry'
describe User do
  describe 'validations' do
    before do
      # Arrange
      @user = users(:c_dagger)
    end

    it 'is valid when it has a user_name' do
      # Act
      result = @user.valid?

      # Assert
      result.must_equal true
    end

    it 'is invalid when it has no user_name' do
      # Arrange
      @user.user_name = nil
      # Act
      result = @user.valid?
      # Assert
      result.must_equal false
    end
  end

  describe 'relationships' do
    before do
      @user = users(:c_dagger)
    end

    # VOTES******************
    it 'has a votes attribute' do
      @user.must_respond_to :votes
    end
  end
end
