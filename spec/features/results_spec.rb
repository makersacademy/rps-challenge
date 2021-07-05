feature 'showing results' do
  scenario 'shows results after game is finished in single player' do
    single_player
    click_button 'Rock'
    expect(page).to have_content 'Here are the results:'
    expect(page).to have_content 'wins!'
  end

  scenario 'shows results after game is finished in two player' do
    multiplayer
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Here are the results:'
    expect(page).to have_content 'Horse wins!'
  end
end