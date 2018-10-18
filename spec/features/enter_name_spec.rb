feature 'Name' do
  scenario 'enters a name and returns a welcome message' do
    visit('/')
    fill_in 'name', with: 'Gizmo'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Gizmo, select a move!'
  end
end
