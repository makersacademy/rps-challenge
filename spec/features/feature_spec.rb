require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Takes names and uses them to show players on /get-player1-move' do
    sign_in_and_play
    expect(page).to have_content "#{@player_1_name} vs. #{@player_2_name}"
  end
  scenario 'Redirects to /get-player2-move after player1 submits their move' do
    sign_in_and_play
    click_on('rock')
    expect(page).to have_content "#{@player_2_name}'s turn"
  end
  scenario 'Displays correct game result in case of draw' do
    sign_in_and_play
    click_on('rock')
    click_on('rock')
    expect(page).to have_content "Its a draw!"
  end
  scenario 'Displays correct game result in case of players 1 victory' do
    sign_in_and_play
    click_on('paper')
    click_on('rock')
    expect(page).to have_content "#{@player_1_name} won with paper"
  end
  scenario 'Displays correct game result in case of players 2 victory' do
    sign_in_and_play
    click_on('paper')
    click_on('scissors')
    expect(page).to have_content "#{@player_2_name} won with scissors"
  end
end
