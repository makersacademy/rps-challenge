require './app.rb'

feature 'Player name' do
  scenario 'Can fill in name and see name on-screen' do
    visit('/')
    fill_in 'Player name', with: "Michael"
    click_button 'Submit'
    expect(page).to have_content 'Michael'
  end
end