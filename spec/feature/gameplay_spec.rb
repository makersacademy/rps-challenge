require 'spec_helper'

feature 'starting a round of RPS' do
  scenario 'start game with options' do
    sign_in_and_play
    expect(page).to have_button('Rocking Rock')
    expect(page).to have_button('Powerful Paper')
    expect(page).to have_button('Slicing Scissors')
  end

  scenario 'select weapon option' do
    sign_in_and_play
    click_button 'Rocking Rock'
    expect(page).to have_content('You chose Rocking Rock!')
  end
end
