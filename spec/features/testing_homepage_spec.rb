feature 'Testing homepage content' do
  scenario 'Run the app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing local host connection'
  end 
end
