require 'spec_helper'

feature "Game page view" do
  scenario 'shows second page' do
    sign_in_and_play
    expect(page).to have_content('Frankie VS. Computer')
  end

  scenario 'make a choice text' do
    sign_in_and_play
    visit '/game'
    expect(page).to have_content('Make your choice')
  end

  scenario 'shows Rock button' do
    sign_in_and_play
    visit '/game'
    click_button('Rock')
  end
  scenario 'shows Paper button' do
    sign_in_and_play
    visit '/game'
    click_button('Paper')
  end
  scenario 'shows Scissors button' do
    sign_in_and_play
    visit '/game'
    click_button('Scissors')
  end

end
