require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RpsApp

feature 'Welcome page' do
  scenario 'click start game button one player' do
    visit('/')
    click_link 'Start Game one player'

    expect(page).to have_content('Please enter your name before stating the game')
  end
end

  feature 'Welcome page' do
    scenario 'click start game button two players' do
      visit('/')
      click_link 'Start Game two players'

      expect(page).to have_content('Please enter your name before stating the game')
    end
end
