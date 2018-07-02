feature 'Player is shown possible moves' do
  scenario 'Rock option shown' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end
  scenario 'Paper option shown' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end
  scenario 'Scissors option shown' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end
end
