require_relative 'web_helper'

feature '/confirmation' do
  scenario 'player sees results' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('The Bored Bot wins!')
  end
end
