feature 'User is able to enter a name' do
  scenario 'can enter a name into the field' do
    visit '/'
    fill_in 'name', with: 'Samuel'
    click_button 'Register'
    expect(page).to have_content 'Hi Samuel!'
  end
end
