feature 'Multiplayer' do
  scenario '2 players can enter names' do
    visit '/'
    fill_in :player1, with: 'Adil'
    fill_in :player2, with: 'Joj'
    click_button 'submit2'
    click_button 'rock'
    expect(page).to have_content('Joj, make your choice!')
  end

  scenario 'Player 1 beats Player 2' do
    visit '/'
    fill_in :player1, with: 'Adil'
    fill_in :player2, with: 'Joj'
    click_button 'submit2'
    click_button 'rock'
    click_button 'scissors'
    expect(page).to have_content('Adil won!')
  end

  scenario 'Player 2 beats Player 1' do
    visit '/'
    fill_in :player1, with: 'Adil'
    fill_in :player2, with: 'Joj'
    click_button 'submit2'
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content('Joj won!')
  end

  scenario 'Players pick the same weapon' do
    visit '/'
    fill_in :player1, with: 'Adil'
    fill_in :player2, with: 'Joj'
    click_button 'submit2'
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content("It's a tie!")
  end
end
