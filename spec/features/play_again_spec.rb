require 'spec_helper'

feature 'play again' do
  scenario 'there is a link to play again' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'Play again?'
  end
  scenario 'it remembers your name' do
    sign_in_and_play
    click_button 'scissors'
    click_link 'Play again?'
    expect(page).to have_content 'Welcome Ewan'
  end
end
