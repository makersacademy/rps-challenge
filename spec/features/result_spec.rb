feature 'show results of the game' do
  scenario 'you win' do
    # play_rock
    register_and_play
    srand(2)
    click_button 'paper'
    expect(page).to have_content('Han won')
  end
  scenario 'you lost' do
    register_and_play
    srand(2)
    click_button 'scissors'
    expect(page).to have_content('Han lost')
  end
  # scenario 'you drew' do
  # end
end
