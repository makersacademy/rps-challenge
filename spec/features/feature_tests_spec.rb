feature 'Enter names' do
  scenario 'Player can input and submit a name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game Jara'
  end
end

feature 'Choose a move' do
  scenario 'Player can choose between three buttons' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Paper'
  end
end
