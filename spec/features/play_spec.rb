require 'capybara/rspec'
require_relative '../../app'
require './lib/player'
require './lib/game'
require_relative 'sign_in'



Capybara.app = RpsApp

feature 'record player 1 choice' do
  scenario 'submit paper choice' do
    sign_in_single
    click_button 'Paper'

    expect(page).to have_content('Play again')
  end
end

feature 'record player 1 choice' do
  scenario 'submit paper choice' do
    sign_in_multiple
    click_button 'Paper'
    click_button 'Rock'

    expect(page).to have_content('Play again')
  end
end
