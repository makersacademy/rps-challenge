feature 'Feature - Play Rock Paper Scissors - single player' do

  before :each do
    srand(1)
  end

  scenario 'Player 1 turn' do
    register_for_multiplayer
    # click_button 'Rock'
    expect(page).to have_content "Clare, it's your turn"
  end

  scenario 'Play Rock' do
    register_for_singleplayer
    click_button 'Rock'
    expect(page).to have_content 'Clare played rock'
  end

  scenario 'Opponent plays - returns a random entry' do
    register_for_singleplayer
    click_button 'Rock'
    expect(page).to have_content(/computer played (rock|paper|scissors)/)
  end

  scenario 'winner or loser' do
    register_for_singleplayer
    click_button 'Rock'
    # expect(page).to have_content 'You are a '
    expect(page).to have_content("computer wins")
  end

  scenario 'draw' do
    register_for_singleplayer
    click_button 'Paper'
    # expect(page).to have_content 'You are a '
    expect(page).to have_content "Draw"
  end

end

feature 'Feature - Play Rock Paper Scissors - 2 player' do

  before :each do
    srand(1)
  end

  scenario 'Player 2 turn' do
    register_for_multiplayer
    click_button 'Rock'
    expect(page).to have_content "Laura, it's your turn"
  end

  scenario 'rock and rock returns draw' do
    register_for_multiplayer
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content "Draw"
  end

  scenario 'rock and paper returns player 2 wins' do
    register_for_multiplayer
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content "Laura wins"
  end
end
