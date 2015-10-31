require 'capybara'
require 'selenium-webdriver'

feature 'registration page' do
  scenario 'player is welcomed and asked to register his or her name' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end

  scenario 'player registers his or her name' do
    visit '/'
    fill_in('player_1_name', with: 'Eric')
    click_button('Submit')
    expect(page).to have_content 'Eric'
  end
end

feature 'battleground page' do
  scenario 'there is a rock button' do
    visit '/battleground'
    expect(page).to have_button 'Rock'
  end


end
