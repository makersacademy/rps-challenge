feature 'Results page' do

  before do
    sign_in_and_play
    click_button 'Rock'
  end
  scenario 'Returns the result method of the game' do
    expect(page).to have_content(Game.current_game.result)
  end

  feature 'play again button' do
    scenario 'returns user to the play page' do
      click_button 'Play again'
      expect(page.current_url).to include('/play')
    end
  end
  
end
