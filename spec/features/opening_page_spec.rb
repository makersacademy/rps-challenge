require 'spec_helper'

feature 'View' do
  scenario 'shows opening page' do
    visit '/'
    expect(page).to have_content('Rock, Paper, Scissors Game')
    expect(page).to have_content('Please sign in to play')
  end

  scenario 'shows second page' do
    sign_in_and_play
    expect(page).to have_content('Frankie VS. RJ')
    click_button("GO!")
  end
end
