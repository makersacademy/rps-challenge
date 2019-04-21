feature 'show message when game is not complete' do

  scenario 'player2 has not registered yet' do
    register
    chose_rock
    expect(page).to have_content 'The other player has not registered yet'
  end

  scenario 'player2 has not chosen yet' do
    register
    register_2
    chose_rock
    expect(page).to have_content 'The other player has not submitted the choice yet'
  end
end
