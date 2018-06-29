feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Dave'
  end
end
