feature 'winner' do
  scenario 'Player 1 wins' do
    register_and_play
    click_button 'Rock'
    click_button 'Next Player'
    click_button 'Scissors'
    click_button 'Result'
    expect(page).to have_content "Ayelisha Wins!"
  end

  scenario 'Player 2 wins' do
    register_and_play
    click_button 'Rock'
    click_button 'Next Player'
    click_button 'Paper'
    click_button 'Result'
    expect(page).to have_content "Elliott Wins!"
  end

  scenario 'Draw' do
    register_and_play
    click_button 'Rock'
    click_button 'Next Player'
    click_button 'Rock'
    click_button 'Result'
    expect(page).to have_content "It's a draw"
  end
end
