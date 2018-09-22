require_relative 'web_helper'
feature 'multiplayer game' do
  scenario 'p1 wins' do
    sign_in_multiplayer
    make_choice('paper', 'rock')
    expect(page).to have_content('John has won')
  end

  scenario 'p2 wins' do
    sign_in_multiplayer
    make_choice('scissors', 'rock')
    expect(page).to have_content('James has won')
  end

  scenario 'tie' do
    sign_in_multiplayer
    make_choice('paper', 'paper')
    expect(page).to have_content('The game is tied!')
  end

  scenario 'new game started succesfully' do
    sign_in_multiplayer
    make_choice('paper', 'paper')
    click_on 'Click here to start a new game!'
    expect(page).to have_content('Player 1 - please enter your name!')
  end

  scenario 'new round started succesfully' do
    sign_in_multiplayer
    make_choice('paper', 'paper')
    click_on 'Click here to play again!'
    expect(page).to have_content('John vs. James')
  end
end
