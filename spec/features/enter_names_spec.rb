feature 'Enter player names' do

  scenario 'Players can enter names into text boxes and submit in two_player' do
    sign_in_and_play
    expect(page).to have_content 'Player1: Dave' && 'Player2: Barry'
  end

  scenario 'Players can enter names into text boxes and submit in single_player' do
    sign_in_and_play_single
    expect(page).to have_content 'Player1: Dave' && 'Computer: Barry'
  end
end
