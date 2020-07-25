require_relative '../spec_helper'
require_relative './web_helpers'

feature '#login' do

  scenario '#login button' do
    homepage
    expect(page).to have_button 'Login'
  end

  scenario 'user is able to login' do
    homepage_sign_in
    expect(page).to have_content 'Welcome to the RPS dashboard'
  end

end