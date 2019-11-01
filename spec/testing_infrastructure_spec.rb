require './app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check content of page' do
    visit('/')
    expect(page).to have_content "Hello Rock Paper Scissors!"
  end
end