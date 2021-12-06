feature 'register name before playing' do
  scenario 'Asks user to input name' do
    visit('/')
    fill_in('name', with: 'Bobby')
    click_button('Submit')
    expect(page).to have_content('Make your choice')
  end
end