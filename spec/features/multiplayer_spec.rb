feature 'Multiplayer' do
  scenario '2 players can enter names' do
    visit '/'
    fill_in :player1, with: 'Adil'
    fill_in :player2, with: 'Joj'
    click_button 'submit2'
    click_button 'rock'
    expect(page).to have_content('Joj, make your choice!')
  end
end
