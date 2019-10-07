feature 'player can replay the game' do
  scenario 'player plays a game then hits the play again button' do
    sign_in_and_play
    click_button "Rock"
    click_button "Play Again"
    expect(page).to have_content 'Choose your move:'
  end
end
