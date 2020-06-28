feature 'Entering a name' do
  scenario 'Enters name in a form and submits it' do
    visit '/'
    fill_in :player_name, with: 'Dhara'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dhara!'
  end
end
