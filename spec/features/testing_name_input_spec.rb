feature 'Testing name input' do
  scenario 'check page content has Hello Luke' do
    visit('/enter-name')
    fill_in :name, with: 'Luke'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Luke'
  end
end
