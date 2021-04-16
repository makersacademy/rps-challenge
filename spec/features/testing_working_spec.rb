require_relative '../../app.rb'

feature 'RPS' do 
  scenario 'It loads the page with "Hello" printed' do
    visit('/')
    expect(page).to have_text 'Hello'
  end
end