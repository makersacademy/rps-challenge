feature 'two player' do
  scenario 'page declares whos turn it is' do
    two_player_game
    expect(page).to have_content("Harry's Turn")
  end

  scenario 'both names on score board' do
    two_player_game
    expect(page).to have_content("Harry: 0")
    expect(page).to have_content("Kitty: 0")
  end

  scenario 'both names on score board' do
    two_player_game
    click_link('rock')
    expect(page).to have_content("Kitty's Turn")
  end
end
