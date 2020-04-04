feature 'the game can be played by two players' do
  scenario 'the game allows player 1 to choose a move' do
    register_two_and_play
    expect(page).to have_content 'Choose a move Phil!'
  end

  scenario 'the game allows player 2 to choose a move' do
    register_two_and_play
    click_button 'Rock'
    expect(page).to have_content 'Choose a move Su!'
  end
end
