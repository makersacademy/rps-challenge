
feature 'Name entry' do
  scenario 'runs app, enters name' do
    visit('/')
    expect(page).to have_field 'player_name'
  end
end
