


feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :name, with: 'Kaja'
    click_button 'Submit'
    expect(page).to have_content 'Kaja'
  end
end
