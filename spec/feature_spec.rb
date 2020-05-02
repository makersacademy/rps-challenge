require 'spec_helper'

feature 'user can register for game' do
  scenario 'user enters their name and clicks submit' do
    visit('/')
    fill_in :player, with: 'Lizzie'
    click_button 'Play'
    expect(page).to have_content 'Welcome! Choose an option below:'
  end
end

feature 'user chooses between rock paper or scissors' do
 scenario 'user clicks on one of the above' do
   visit('/')
   game = Game.new
   fill_in :player, with: 'Lizzie'
   click_button 'Play'
   click_button 'ROCK'
   allow(game).to receive(:click_button) { 'ROCK'}
   allow(game)
   expect(page).to have_content 'YOU WIN!'
 end
end

feature 'randomiser chooses between rock, paper or scissors' do
  scenario 'randomiser selects one of the above' do
    visi fill_in :player, with: 'Lizzie'
     click_button 'Play'
     click_button 'ROCK'
     expect(page).to have_content 'YOU WIN!'
   end
 end
