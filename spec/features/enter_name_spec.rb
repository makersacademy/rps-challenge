feature 'Enter name' do
  scenario 'add name' do
    visit('/')
    fill_in('name', with: 'John')
    click_button('Submit')
    expect(page).to have_content('John')
  end
end
