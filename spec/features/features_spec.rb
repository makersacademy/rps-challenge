
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1, with: 'Kaja'
    click_button 'Submit'
    expect(page).to have_content 'Kaja'
  end
end
