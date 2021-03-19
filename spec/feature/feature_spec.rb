feature 'Register name' do
  scenario 'has a field to input name and displays name' do
    visit('/')
    fill_in('name', with: 'Taran')
    click_button('Submit')
    expect(page).to have_content("Taran")
  end
end