feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Sity'
    click_button 'Push me'
    expect(page).to have_content 'Sity vs. The Computer'
  end
end
