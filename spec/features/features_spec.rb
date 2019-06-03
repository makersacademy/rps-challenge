feature 'Allow player to fill in name in a form' do
  scenario 'Can submit form with username' do
    sign_in_and_play
    expect(page).to have_content 'Ollie'
  end
  scenario 'Can display turn choices' do
    sign_in_and_play
    expect(page).to have_content 'Make your choice - rock, paper or scissors?'
  end
end

feature 'Player and computer can have a turn' do
  scenario 'Allow player to fill in turn choice in a form' do
    sign_in_and_play
    fill_in 'player_move', with: 'rock'
    click_button "Submit"
    expect(page).to have_content 'You have chosen rock'
  end
  scenario 'Allow computer to choose a turn with scissors' do
    sign_in_and_play
    fill_in 'player_move', with: 'rock'
    click_button "Submit"
    expect(page).to have_content 'The computer has chosen scissors'
  end
end

feature 'Player or computer can win a game' do
  scenario 'Allow either computer or player to win game depending on turn' do
    sign_in_and_play
    fill_in 'player_move', with: 'rock'
    click_button "Submit"
    expect(page).to have_content 'The winner is:'
  end
end
