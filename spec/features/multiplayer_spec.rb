feature 'Multiplayer' do
  scenario 'Player1 wins' do
    submit_two_names
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_content 'Player1 WINS!'
  end

  scenario 'Player2 wins' do
    submit_two_names
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Player2 WINS!'
  end

  scenario 'A tie' do
    submit_two_names
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content 'YOU TIED!'
  end
end
