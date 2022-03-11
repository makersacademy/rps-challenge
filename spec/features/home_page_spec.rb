feature 'setup game' do
  scenario '2 players can see their name' do
    setup_players('Vic', 'Bob')
    expect(page).to have_content 'Vic vs. Bob'
  end
end