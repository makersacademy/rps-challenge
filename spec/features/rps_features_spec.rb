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

feature 'play page' do
  scenario 'the player can choose an action' do
    visit '/play'
    expect(page).to have_content 'Write rock, paper or scissors in the following box'
  end
end

feature 'result page' do
  scenario 'the player sees his or her choice on the results page' do
    visit '/play'
    fill_in('player_1_choice', with: 'rock')
    click_button('Play')
    expect(page).to have_content 'You chose rock'
  end
end
