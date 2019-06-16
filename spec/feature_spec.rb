require './lib/rps-controller'

feature 'testing setup' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'ROCK PAPER SCISSORS'
  end

end