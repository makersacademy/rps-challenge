require_relative "test_helpers"

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end
  
  scenario 'See single player' do
    visit('/')
    click_button "Single Player"
    expect(page).to have_content 'Single Player'
  end
  
  scenario 'Submit single player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Charlotte'
  end
  
  scenario 'Play Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'Your move: rock'
  end
  
  scenario 'Play Paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'Your move: paper'
  end
  
  scenario 'Play Scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'Your move: scissors'
  end
  
  scenario 'See multi player' do
    visit('/')
    click_button "Multi Player"
    expect(page).to have_content 'Multi Player'
  end
  
  scenario 'Submit multi player name player1' do
    sign_in_and_play_multi
    expect(page).to have_content 'Welcome Charlotte'
  end
  
  scenario 'Submit multi player name player2' do
    visit('/play_multi_2nd_player')
    expect(page).to have_content 'Welcome Charlotte'
  end
  
  scenario 'Player 1 multi player game' do
    visit('/play_game_multi_1st_player')
    expect(page).to have_content 'Welcome Charlotte'
  end
  
  scenario 'Player 2 multi player game' do
    visit('/play_game_multi_2nd_player')
    expect(page).to have_content 'Welcome Charlotte'
  end
  
  scenario 'Player1 await player move' do
    visit('/play_game_multi_1st_player')
    expect(page).to have_content 'Please wait for next turn'
  end
  
  scenario 'Player1 winner check' do
    visit('/play_game_multi_1st_player')
    expect(page).to have_content 'Awaiting player move'
  end
  
  scenario 'Player2 await player move' do
    visit('/play_game_multi_2nd_player')
    expect(page).to have_content 'Please wait for next turn'
  end
  
  scenario 'Player2 winner check' do
    visit('/play_game_multi_2nd_player')
    expect(page).to have_content 'Awaiting player move'
  end
  
end
