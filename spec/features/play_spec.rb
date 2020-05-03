require 'spec_helper'

feature 'Play page' do
  scenario 'User starts game' do
    sign_in_and_play
    expect(page).to have_content("Type Rock, Paper or Scissors to play!")
  end

  scenario 'Displays user name' do
    sign_in_and_play
    expect(page).to have_content("Hi Hibo!")
  end
end
