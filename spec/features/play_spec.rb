require 'spec_helper'

feature 'Play page' do
  scenario 'User starts game' do
    sign_in_and_play
    expect(page).to have_content("Choose Rock, Paper or Scissors.")
  end

  scenario 'Displays user name' do
    sign_in_and_play
    expect(page).to have_content("Hi Hibo!")
  end
end
