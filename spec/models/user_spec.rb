require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user1 = User.new(name: 'User01', email: 'two@user.com', password: '123456')
  end
  context 'validation tests' do
    it ' ensures name not blank' do
      user = User.new(name: '',email: 'two@user.com',password: '123456').save
      expect(user).to eql(false)
      
    end
    it 'test if a user is valid ' do
      expect(@user1).to be_valid 
    end
    it 'ensures length of username should at least 3' do
      user = User.new(email: 'two@user.com',password: '123456')
      expect(user.valid?).to eql(false)
    end
    it 'can create a new user' do
      @user1.save
      expect(@user1.valid?).to eq(true)
    end

    it 'creates a user only if the name is unique' do
      @user1.save
      @user2 = User.create(name: @user1.name.to_s)
      expect(@user2.valid?).to eq false
    end
  end
end
