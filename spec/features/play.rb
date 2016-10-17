require 'spec_helper'

feature 'Enter names' do
  scenario 'allows player to enter their names' do
    sign_in
    expect(page).to have_content ("Edward Scissorhands")
  end

  scenario 'has three different buttons' do
    sign_in
    page.should have_selector(:rock, 'Rock')
    page.should have_selector(:paper, 'Paper')
    page.should have_selector(:scissors, 'Scissors')
  end

end
