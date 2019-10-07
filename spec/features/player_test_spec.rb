feature 'entering a player name' do
  scenario 'player name will be displayed' do
    sign_in
    expect(page).to have_content 'Ajay vs CPU'
  end
end
