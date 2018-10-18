feature 'Name' do
  scenario 'enters a name' do
    visit('/')
    fill_in 'name', with: 'Gizmo'
    click_button('Submit')
    expect(page).to have_content 'Welcome Gizmo, select a move!'
  end
end
