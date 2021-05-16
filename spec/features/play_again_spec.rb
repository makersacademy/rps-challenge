features 'Play again' do
  scenario 'returns to play screen after a round' do
    sign_in_and_play
    click_button 'Scissors'
    click_button 'Play Again'
    expect(page).to have_content 'Charlie vs Computer'
  end
end