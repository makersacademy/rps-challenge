require_relative '../../app.rb'

feature 'RPS' do 
  scenario 'It loads the page ability to input names' do 
    visit('/')
    expect(page).to have_text 'Please enter your name:'
  end
end