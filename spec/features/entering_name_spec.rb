feature 'Registering name' do
  scenario 'user enters name' do
    visit('/')
    fill_in :name, with: 'Damo'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Damo !!!'
  end
end
