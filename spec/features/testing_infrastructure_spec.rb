require './app.rb'

feature 'testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content('Let\'s play Rock, Paper, Scissors!')
  end
end
