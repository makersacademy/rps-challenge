require 'app'
require 'capybara'

feature 'testing infrastructure' do
  scenario 'player inputs name, submits and it is printed out on screen' do
    visit('/')
    fill_in 'player1', with: 'Ara'
    click_button('Go!')
    expect(page).to have_content('Choose your move Ara')
  end
end