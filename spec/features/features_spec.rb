# frozen_string_literal: true

feature 'player can enter their name' do
  scenario 'player enters name and it is displayed on game page' do
    sign_in_and_play
    expect(page).to have_content('James')
  end
end

feature 'player can select a move' do
  scenario 'Player can select rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content('You chose rock!')
  end

  scenario 'Player can select paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content('You chose paper!')
  end
end

feature 'player can play a game' do
  scenario 'player will win if they choose correct option' do
    player_win_rock
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content('You win')
  end

  scenario 'player will lose if they choose correct option' do
    player_lose_scissors
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content('You lose')
  end

  scenario 'player will lose if they choose correct option' do
    player_draw_paper
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content('There was a draw')
  end
end

feature 'player has a score' do
  scenario 'game page should display an empty score' do
    sign_in_and_play
    expect(page).to have_content('Score: 0')
  end

  scenario 'winning a game adds to the score' do
    player_win_rock
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content('Score: 1')
  end
end
