feature 'Enter Names' do
  scenario 'Entering a name' do
    enter_name
    expect(page).to have_content('Welcome Robert!')
  end
end