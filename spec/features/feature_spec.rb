feature 'entering player name' do

  scenario 'enter the player name and see it on the play page' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    expect(page).to have_content 'Ainsley'
  end

end

feature 'choosing a weapon' do

  scenario 'allows rock to be chosen' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    expect(page).to have_button 'Rock'
  end

  scenario 'allows paper to be chosen' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    expect(page).to have_button 'Paper'
  end

  scenario 'allows scissors to be chosen' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    expect(page).to have_button 'Scissors'
  end

end

feature 'showing the game result' do

  scenario 'winning the game' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    allow(Game.current_game).to receive(:result) { "win" }
    click_button 'Rock'
    expect(page).to have_content 'You win'
  end

  scenario 'losing the game' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    allow(Game.current_game).to receive(:result) { "lose" }
    click_button 'Rock'
    expect(page).to have_content 'You lose'
  end

  scenario 'the game is a tie' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    allow(Game.current_game).to receive(:result) { "tie" }
    click_button 'Rock'
    expect(page).to have_content 'You tie'
  end

end

feature 'player can play again' do

  scenario 'Play again button is visible' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    click_button 'Rock'
    expect(page).to have_button 'Play again'
  end

end
