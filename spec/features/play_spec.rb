require 'spec_helper'

feature '/play' do

  scenario 'Choosing rock redirects to rock route' do
    visit_and_register
    click_button('Rock')
    expect(page).to have_content("#{$game.player.name} chooses rock.")
  end

  scenario 'Choosing paper redirects to paper route' do
    visit_and_register
    click_button('Paper')
    expect(page).to have_content("#{$game.player.name} chooses paper.")
  end

  scenario 'Choosing scissors redirects to scissors route' do
    visit_and_register
    click_button('Scissors')
    expect(page).to have_content("#{$game.player.name} chooses scissors.")
  end

end
