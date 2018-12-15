feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :user_name, with: 'Manu'
    click_button 'Submit'
    expect(page).to have_content 'Manu'
  end
end
