feature 'Name' do
  scenario 'enters a name' do
    visit('/')
    fill_in 'player_name', with: 'Gizmo'
    expect(page).to have_content 'Welcome Gizmo, select a move!'
  end
end
