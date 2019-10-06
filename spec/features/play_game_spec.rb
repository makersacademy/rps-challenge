
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

    scenario 'Player wins' do
      sign_in_player
      srand(COMP_MOVE)
      click_button 'paper'
      expect(page).to have_content "You won!"
    end
end
