
feature 'Name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player, with: 'Slava'
    expect(page).to have_button 'Submit'
  end
end
