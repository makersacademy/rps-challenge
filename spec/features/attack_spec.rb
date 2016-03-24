feature 'Attack Player' do

  scenario 'deals blow' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_text("rock")
  end

  scenario 'goes back to play screen after attack' do
  	sign_in_and_play
    click_button 'rock'
    click_button 'Replay!'
    expect(page).to have_text("Bob VS the computer!")
  end

end
