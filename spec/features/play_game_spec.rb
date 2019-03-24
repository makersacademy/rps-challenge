# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Game play' do

  scenario 'go back to play screen after start again button is clicked' do
    register_1_player_against_computer
    click_button 'rock'
    click_link 'OK'
    click_button 'Start again'
    expect(page).to have_content 'Round 2'
  end

  scenario 'shows score increase for player 1' do
    allow_any_instance_of(Computer).to receive(:rand).and_return(2)  
    register_1_player_against_computer
    click_button 'rock'
    click_link 'OK'
    click_button 'Start again'
    expect(page).to have_content 'Score: Player1 - 0 : Computer - 1'
  end

  scenario 'player 1 wins game' do
    allow_any_instance_of(Computer).to receive(:rand).and_return(1)    
    register_1_player_against_computer
    click_button 'paper'
    click_link 'OK'
    expect(page).to have_content 'Winner: Player1'
  end

  scenario 'player 2 wins game' do
    allow_any_instance_of(Computer).to receive(:rand).and_return(2)
    register_1_player_against_computer
    click_button 'rock'
    click_link 'OK' 
    expect(page).to have_content 'Winner: Computer'
  end

  scenario 'computer as first player' do
    register_computer_against_1_player
    expect(page).to have_content 'Computer has chosen'
  end

  scenario 'computer as second player' do
    register_1_player_against_computer
    click_button 'paper'
    expect(page).to have_content 'Computer has chosen'
  end

end
