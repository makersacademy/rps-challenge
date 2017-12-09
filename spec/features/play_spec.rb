require 'capybara/rspec'
require_relative '../../app'
require './lib/player'
require './lib/game'


Capybara.app = RpsApp

feature 'record player 1 choice' do
  scenario 'submit paper choice' do
    sign_in
    click_button 'Paper'

    expect(page).to have_content('The winner is')
  end
end

feature 'show player 1 choice' do
  scenario 'submit paper choice' do
    sign_in
    click_button 'Paper'

    expect(page).to have_content('Choice: paper')
  end
end
