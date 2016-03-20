require 'spec_helper'
require 'capybara'


feature 'Sign in' do
  scenario 'Welcomes players' do
    expect(page).to have_content("Welcome Please Enter Your Name")
  end
end
