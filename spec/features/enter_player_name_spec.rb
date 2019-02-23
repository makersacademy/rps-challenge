feature 'Players can enter names' do
  scenario 'Player enters their name and it shows on the /play route' do
    visit '/'
    fill_in 'player1_name', with: 'Ozzy Osbourne'
    click_button 'Play'
    expect(page).to have_content 'Ozzy Osbourne'
  end
end
