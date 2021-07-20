feature 'Enter player name' do
  scenario 'player enters name' do
    name_entered
    expect(page).to have_content('Luke VS Mac!')
  end
end
