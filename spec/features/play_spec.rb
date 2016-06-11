require 'spec_helper'

feature 'playing rock/paper/scissors' do
  before do
    visit('/')
    fill_in('name', with: 'Marlon')
    click_button('Submit')
  end

  scenario 'Has the choice of rock, paper or scissors' do
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end

  scenario 'Player chooses an option' do
    click_button('Rock')
    expect(page).to have_content('You chose Rock.')
  end

end
