require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  scenario 'valid redirect' do
    visit root_path
    click_on 'login'
    expect(page).to have_content('Login')
  end
  scenario 'valid sign up redirect' do
    visit root_path
    click_on 'signup'
    expect(page).to have_content('Sign Up')
  end
end
