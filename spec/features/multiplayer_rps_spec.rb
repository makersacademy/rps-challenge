feature 'the game can be played by two players' do
  scenario 'the game allows player 1 to choose a move' do
    register_and_play
    expect(page).to have_content 'Choose a move Phil!'
  end

  scenario 'the game allows player 2 to choose a move' do
    register_and_play
    click_button 'Rock'
    expect(page).to have_content 'Choose a move Su!'
  end

  scenario 'both players chooses their moves and are shown the result' do
    register_and_play
    click_button 'Paper'
    click_button 'Paper'
    expect(page).to have_content "It's a draw - both players chose paper"
  end
end
