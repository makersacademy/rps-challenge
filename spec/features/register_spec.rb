feature 'User' do
  scenario 'can register' do
    visit '/'
    fill_in('name', with: 'Pepito')
    click_button('Submit')
    expect(page).to have_content('Pepito')
  end

end
