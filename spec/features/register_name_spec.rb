feature 'Register name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Anjana'
    click_button 'Submit'
    expect(page).to have_content 'Anjana'
  end
end
