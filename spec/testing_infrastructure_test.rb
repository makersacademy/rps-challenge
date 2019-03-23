require_relative '../app.rb'

feature 'Start a fight and enter names' do
  scenario 'players can submit names and see names on screen' do
    visit('/')
    expect(page).to have_content 'Tests work!'
  end
end
