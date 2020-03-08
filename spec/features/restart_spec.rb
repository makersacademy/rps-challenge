feature 'game goes back to play.erb after the game' do

  scenario 'player can restart game' do
    sign_in_and_play
    click_button 'rock'
    click_button 'restart'
    expect(page.find_button("rock"))
  end

end
