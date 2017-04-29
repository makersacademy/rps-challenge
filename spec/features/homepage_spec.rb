require_relative '../../app.rb'

feature 'homepage' do
  scenario 'user navigates to page' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
  end
end
