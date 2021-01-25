feature 'Enter name' do
  scenario 'register' do
    visit('/')
    fill_in :name, with: 'Oscar'
    click_button 'Submit'
    expect(page).to have_content 'Oscar'
  end
end
