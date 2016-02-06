feature 'Enter a name and show it' do

  scenario 'sends a form to fill in a name' do
    visit '/'
    expect(page).to have_content('Name:')
  end

  scenario 'returns the name of the visitor' do
    visit '/'
    fill_in('name', with: 'John the rockiest paper scissor')
    click_button('Submit')
    expect(page).to have_content('John the rockiest')
  end

end
