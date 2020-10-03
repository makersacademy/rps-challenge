feature 'player enters their name' do
  let(:player_name) { 'Petra' }

  scenario 'player name is displayed' do
    submit_name(player_name)
    expect(page).to have_content("Choose your weapon, #{player_name}")
  end
end
