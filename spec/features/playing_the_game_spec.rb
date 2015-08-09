feature 'Playing the game' do
  scenario 'Making a selection' do
    visit '/one_player_game'
    click_button('rock')
    expect(page).to have_content('You chose rock')
  end

  scenario 'Playing again' do
    visit '/one_player_game'
    click_button('paper')
    click_button('Play Again?')
    expect(page).to have_content('make your choice!')
  end
end