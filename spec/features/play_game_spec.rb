require 'spec_helper'

feature 'Starting a new game' do

  scenario 'user is asked for their name' do
    visit '/'
    expect(page).to have_content('What is your name?')
  end
end 