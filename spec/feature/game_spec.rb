require 'spec_helper'

feature 'it asks you to select a weapon' do
  scenario 'add new user' do
    visit '/play'
    expect(page).to have_content("Choose your weapon")
  end

  #Test buttons here


end
