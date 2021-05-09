require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'blanco',email: 'two@user.com',password: '123456') }
  let(:group) { user.groups.create(name: 'abc', avatar: 'app/assets/images/login.png') }
  context 'testing group controller method and models' do
     it ' saves an group ' do
      valid_user = User.new(name: 'User01', email: 'two@user.com', password: '123456')
    valid_user.avatar.attach(io: File.open('app/assets/images/login.png'), filename: "login.png", content_type: "images/png")
    expect(valid_user.avatar.attached?).to be(true)
     end
  end
end
