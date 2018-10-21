feature 'Feature - Play Rock Paper Scissors - single player' do

  before :each do
    srand(1)
  end

  scenario 'Player 1 turn' do
    register_for_multiplayer_and_play
    # click_button 'Rock'
    expect(page).to have_content "Clare, it's your turn"
  end

  scenario 'Play Rock' do
    register_for_singleplayer_and_play
    click_button 'Rock'
    expect(page).to have_content 'Clare played rock'
  end

  scenario 'Opponent plays - returns a random entry' do
    register_for_singleplayer_and_play
    click_button 'Rock'
    expect(page).to have_content(/computer played (rock|paper|scissors)/)
  end

  scenario 'winner or loser' do
    register_for_singleplayer_and_play
    click_button 'Rock'
    # expect(page).to have_content 'You are a '
    expect(page).to have_content("computer wins")
  end

  scenario 'draw' do
    register_for_singleplayer_and_play
    click_button 'Paper'
    # expect(page).to have_content 'You are a '
    expect(page).to have_content "It's a draw"
  end

  scenario 'Check rules - singleplayer' do
    register_for_singleplayer_and_play
    # p URI.parse(current_url)
    click_button 'Rules'
    # click_button 'Rock'
    expect(page).to have_content "The Rules"
  end

end

feature 'Feature - Play Rock Paper Scissors - multiplayer' do

  before :each do
    srand(1)
  end

  scenario 'Player 2 turn' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    expect(page).to have_content "Laura, it's your turn"
  end

  scenario 'rock and rock returns draw' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content "It's a draw"
  end

  scenario 'rock and paper returns player 2 wins' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content "Laura wins"
  end

  scenario 'Check rules - multiplayer' do
    register_for_multiplayer_and_play
    click_button 'Rock'
    # p URI.parse(current_url)
    click_button 'Rules'
    # p URI.parse(current_url)
    # click_button 'Rock'
    expect(page).to have_content "The Rules"
  end
end
feature 'Feature - Rock paper scissors lizard spock' do
  scenario 'has the lizard button to select' do
    register_for_singleplayer_and_play_spock_variant
    # expect(page).to have_content "Laura wins"
    expect(page).to have_button('Lizard')
  end
  scenario 'does not have the lizard button to select' do
    register_for_singleplayer_and_play
    # expect(page).to have_content "Laura wins"
    expect(page).not_to have_button('Lizard')
  end
end
