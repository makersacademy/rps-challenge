require_relative 'web_helper'
feature 'multiplayer game' do
  scenario 'p1 wins' do
    sign_in_multiplayer
    click_on 'paper'
    click_on 'rock'
    expect(page).to have_content('John has won')
  end

  scenario 'p2 wins' do
    sign_in_multiplayer
    click_on 'scissors'
    click_on 'rock'
    expect(page).to have_content('James has won')
  end

  scenario 'tie' do
    sign_in_multiplayer
    click_on 'paper'
    click_on 'paper'
    expect(page).to have_content('The game is tied!')
  end
end
