feature 'Game ends' do

  scenario 'if player 1 wins by reaching a score of 3' do
    start_game
    3.times do
      srand(3)
      click_button 'rock'
      click_button 'Ok'
    end
    expect(page).to have_content "You win"
  end

  scenario 'if computer wins by reaching a score of 3' do
    start_game
    3.times do
      srand(1)
      click_button 'rock'
      click_button 'Ok'
    end
    expect(page).to have_content "You lose"
  end

end
