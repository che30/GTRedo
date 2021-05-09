require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user1 = User.new(name: 'User01', email: 'two@user.com', password: '123456')
  end
  describe '#screen_name' do
    it { is_expected_to validate_presence_of(:name) }
  end
  
  describe 'relations' do
    it 'test if a user has an avatar' do
      expect(@user).to have_one(:avatar_attachment)
    end
  end
  context 'validation tests' do
    it ' ensures name not blank' do
      user = User.new(name: '',email: 'two@user.com',password: '123456').save
      expect(user).to eql(false)
      
    end
    it 'test if a user is valid ' do
      expect(@user1).to be_valid 
    end
    # it 'ensures length of username should at least 3' do
    #   user = User.new(username: 'c').save
    #   expect(user).to eql(false)
    # end
    # it 'can create a new user' do
    #   @user1.save
    #   expect(@user1.valid?).to eq(true)
    # end
    # it 'creates a user with only a length of min:3 and max:30' do
    #   @user2 = User.create(username: '')
    #   expect(@user2.errors.full_messages[1]).to include 'short'
    # end
    # it 'creates a user only if the name is unique' do
    #   @user1.save
    #   @user2 = User.create(username: @user1.username.to_s)
    #   expect(@user2.valid?).to eq false
    # end
  end
end
