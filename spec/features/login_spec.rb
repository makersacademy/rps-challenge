require_relative '../spec_helper'
require_relative './web_helpers'

feature '#login' do

  scenario 'fail to login without a player one username' do
    homepage
    click_button 'Login'
    expect(page).to have_button 'Login'
  end

  scenario 'Presence of login button' do
    homepage
    expect(page).to have_button 'Login'
  end

  scenario 'User is able to login' do
    homepage_sign_in
    expect(page).to have_content 'Welcome to the RPS Dashboard'
  end

end