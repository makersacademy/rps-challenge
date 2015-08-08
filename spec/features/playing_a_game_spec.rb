require 'spec_helper'

feature 'Playing a game' do
  scenario 'Player can choose an option' do
    visit '/game?myname=Antonio'
    expect(page).to have_content 'Now select an option!'
  end
  scenario 'Player chooses an option' do
    visit '/game?myname=Antonio'
    select 'Rock', from: 'option'
    click_button 'Throw!'
    expect(page).to have_content "You threw Rock!"
  end
end
