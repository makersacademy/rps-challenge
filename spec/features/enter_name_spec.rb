feature 'Enter name' do
  scenario 'player enters their name' do
    visit('/')
    fill_in :name, with: 'Tara'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Tara'
  end
end
