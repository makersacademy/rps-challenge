feature 'start playing' do
  scenario 'Welcome the user' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Neha'
  end
  scenario 'Ask user to choose move' do
    sign_in_and_play
    expect(page).to have_content 'Choose your move'
  end
  scenario 'Give options to choose' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
