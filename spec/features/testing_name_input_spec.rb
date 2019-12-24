feature 'Testing name form loads' do
  scenario 'check /enter-name route loads' do
    visit('/enter-name')
    expect(page).to have_content 'Enter your name below:'
  end
end

feature 'Testing name input' do
  scenario 'check page content has Hello Luke' do
    visit('/enter-name')
    fill_in :name, with: 'Luke'
    click_button 'Submit'
    expect(page).to have_content 'Hello, Luke'
  end
end
