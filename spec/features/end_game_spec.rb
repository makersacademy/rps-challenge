feature 'End game page' do

  scenario 'Player 1 ends the game' do
    enter_game
    both_sign_in_and_enter_game
    visit '/p2_play'
    click_button('SCISSORS')
    visit '/p1_play'
    click_button('ROCK')
    click_button('End game')
    click_button('New game')
    expect(page).to have_content('Rock-Paper-Scissors-Lizard-Spock!!!')
  end

  scenario 'Player 2 ends the game' do
    enter_game
    both_sign_in_and_enter_game
    visit '/p1_play'
    click_button('ROCK')
    visit '/p2_play'
    click_button('SCISSORS')
    click_button('End game')
    click_button('New game')
    expect(page).to have_content('Rock-Paper-Scissors-Lizard-Spock!!!')
  end
end
