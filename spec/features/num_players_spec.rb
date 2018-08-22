feature 'Gives the choice between playing with another, or against the computer' do
  scenario 'playing against the computer' do
    visit('/')
    fill_in :num_players, with: '1'
    click_button('Submit')
    expect(page).to have_content('Enter your name and hit \'Submit\'')
  end

  scenario 'playing with another human' do
    visit('/')
    fill_in :num_players, with: '2'
    click_button('Submit')
    expect(page).to have_content('Player 1:')
  end

  scenario 'playing with another human' do
    visit('/')
    fill_in :num_players, with: '2'
    click_button('Submit')
    expect(page).to have_content('Player 2:')
  end
end