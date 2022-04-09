require './app.rb'

feature 'Player name' do
  scenario 'Can fill in name and see names on-screen' do
    visit('/')
    fill_in 'Player name', with: "Michael"
    expect(page).to have_content 'Michael'
  end
end