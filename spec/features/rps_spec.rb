feature 'Entering names' do
  scenario 'so that i can play a game of rock, paper, scissors' do
    visit('/')
    fill_in :player_1, with: 'Frank'
    click_button "submit"
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
    expect(page).to have_content 'Frank, its your turn!'
  end
end

feature 'Taking turn' do
  scenario 'submit turn so that i can get the result of the game' do
    visit('/play')
    allow(RPS.new(Player.new('Frank'))).to receive(:computer_move).and_return('rock')
    click_button "rock"
    click_button "submit"
    expect(page).to have_content ("It's a draw!") || ("Unlucky, you lost!") || ("Congratulations, you won!")
  end
end

