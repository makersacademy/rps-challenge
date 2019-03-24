# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Game play' do

  scenario 'go back to start after game end' do
    register_1_player_against_computer
    click_button 'Rock'
    click_link 'OK'
    click_button 'Start again'
    expect(page).to have_content 'Players:'
  end

  scenario 'player 1 wins game' do
    pending "Can't stub randomness in feature test"
    game = RPS.instance
    allow(game).to receive(:rand).and_return(1)
    
    register_1_player_against_computer
    click_button 'Paper'
    click_link 'OK'
   
    expect(page).to have_content 'Winner: Player1' #how to stub the randomness of computer?
  end

  scenario 'player 2 wins game' do
    pending "Can't stub randomness in feature test"
    game = RPS.instance
    allow(game).to receive(:rand).and_return(3) 

    register_1_player_against_computer
    click_button 'Rock'
    click_link 'OK' 
    expect(page).to have_content 'Winner: Computer'
  end

  scenario 'computer as first player' do
    visit '/'
    check('computer1')
    fill_in "player2",	with: "Player2"
    click_button 'Start game'
    expect(page).to have_content 'Computer has chosen'
  end

  scenario 'computer as second player' do
    visit '/'
    fill_in "player1",	with: "Player1"
    check('computer2')
    click_button 'Start game'
    click_button 'Paper'
    expect(page).to have_content 'Computer has chosen'
  end

end
