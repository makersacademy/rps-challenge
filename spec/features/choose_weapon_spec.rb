require 'spec_helper'

feature 'Choose weapon' do
  scenario 'select a weapon to do battle' do
  	visit('/')
  	fill_in :player_name, with: 'Luke'
  	click_button 'Submit'
  	expect(page).to have_content 'Luke choose your weapon...'
  end
end

feature 'Weapon selected' do
  scenario 'weapon choice made by player' do
  	visit('/')
  	fill_in :player_name, with: 'Luke'
  	click_button 'Submit'
  	fill_in :player_weapon, with: 'rock'
  	click_button 'Fight!'
  	expect(page).to have_content 'Luke selected rock'
  end
end