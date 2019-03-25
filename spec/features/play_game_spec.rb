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

  context 'normal game' do
    scenario 'see Rock Paper Scissors Spock Lizzard buttons' do
      register_1_player_against_computer
      expect(page).to have_selector(:link_or_button, 'rock')
      expect(page).to have_selector(:link_or_button, 'paper')
      expect(page).to have_selector(:link_or_button, 'scissors')
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

    scenario 'draw' do
      allow_any_instance_of(Computer).to receive(:rand).and_return(1)
      register_1_player_against_computer
      click_button 'rock'
      click_link 'OK' 
      expect(page).to have_content 'Winner: Draw'
    end
  
  end

  context 'spock game' do
    scenario 'see Rock Paper Scissors Spock Lizzard buttons' do
      register_1_player_against_computer_spock
      expect(page).to have_selector(:link_or_button, 'rock')
      expect(page).to have_selector(:link_or_button, 'paper')
      expect(page).to have_selector(:link_or_button, 'scissors')
      expect(page).to have_selector(:link_or_button, 'spock')
      expect(page).to have_selector(:link_or_button, 'lizard')
    end

    scenario 'player 1 wins game' do
      allow_any_instance_of(Computer).to receive(:rand).and_return(5)    
      register_1_player_against_computer_spock
      click_button 'spock'
      click_link 'OK'
      expect(page).to have_content 'Winner: Computer'
    end

    scenario 'player 1 wins game' do
      allow_any_instance_of(Computer).to receive(:rand).and_return(3)
      register_1_player_against_computer_spock
      click_button 'rock'
      click_link 'OK' 
      expect(page).to have_content 'Winner: Player1'
    end

    scenario 'draw' do
      allow_any_instance_of(Computer).to receive(:rand).and_return(4)    
      register_1_player_against_computer_spock
      click_button 'spock'
      click_link 'OK'
      expect(page).to have_content 'Winner: Draw'
    end

    

   
  end

end
