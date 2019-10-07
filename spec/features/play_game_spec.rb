
#     a winner will be declared

feature 'play game' do

COMP_MOVE = 2

  scenario 'it allows player to select a move' do
    sign_in_player
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'the game will choose a random move' do
    sign_in_player
    srand(COMP_MOVE)
    click_button 'rock'
    expect(page).to have_content "The computer's move is...rock"
  end
  
  context 'game over' do
    before do
      srand(COMP_MOVE)
    end
    
    scenario 'Player wins' do
      sign_in_player
      click_button 'paper'
      expect(page).to have_content "You won!"
    end

    scenario 'Player loses' do
      sign_in_player
      click_button 'scissors'
      expect(page).to have_content 'Sorry...you lost!'
    end
  end
end
