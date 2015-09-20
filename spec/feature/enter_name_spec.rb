require 'spec_helper'

feature 'it asks you to enter your name' do
  scenario 'add new user' do
    visit '/'
    expect(page).to have_content('Hello')
  end
end
