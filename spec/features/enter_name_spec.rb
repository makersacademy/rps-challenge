feature 'Enter name' do
  scenario 'Can see name after entering on a form' do
    visit('/')
    fill_in :player, with: 'Freddy'
    click_button('Submit')
    expect(page).to have_content "Welcome Freddy"
  end
end
