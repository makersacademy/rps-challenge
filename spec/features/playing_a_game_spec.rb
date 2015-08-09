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
  scenario 'Computer throws random option' do
    visit '/game?myname=Antonio'
    select 'Rock', from: 'option'
    click_button 'Throw!'
    #computer needs to be stubbed for paper
    expect(page).to have_content "Computer threw Paper!"
  end
  scenario 'Draw' do
    visit '/game?myname=Antonio'
    select 'Rock', from: 'option'
    click_button 'Throw!'
    #computer needs to be stubbed for rock
    expect(page).to have_content "Draw!"
  end
  scenario 'A winner is declared' do
    visit '/game?myname=Antonio'
    select 'Rock', from: 'option'
    click_button 'Throw!'
    #computer needs to be stubbed for paper
    expect(page).to have_content "Computer wins!"
  end
end
