feature 'Results page' do

  scenario 'Returns the result method of the game' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content(Game.current_game.result)
  end

end
