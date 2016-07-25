require 'spec_helper'


describe 'features' do

  feature 'name form' do
    scenario 'Two players can register their names' do
      visit '/'
      fill_in :player1_name, with: 'Luke'
      fill_in :player2_name, with: 'Sinatra'
      expect(page).to have_content 'Please enter your name'
    end
  end

    feature 'singleplayer' do
      scenario 'Plays a singleplayer game' do
        visit '/'
        fill_in :player1_name, with: 'Luke'
        click_button('submit')
        click_button('rock', :match => :first)
        click_button('fight')
        expect(page).to have_content 'Luke chose rock'
      end
    end

    feature 'multiplayer' do
      scenario 'Player 1 can win' do
        visit '/'
        fill_in :player1_name, with: 'Luke'
        fill_in :player2_name, with: 'Sinatra'
        click_button('submit')
        click_button('rock', :match => :first)
        click_button('p2 scissors')
        click_button('fight')
        expect(page).to have_content 'Luke wins!'
      end

      scenario 'Player 2 can win' do
        visit '/'
        fill_in :player1_name, with: 'Luke'
        fill_in :player2_name, with: 'Sinatra'
        click_button('submit')
        click_button('paper', :match => :first)
        click_button('p2 scissors')
        click_button('fight')
        expect(page).to have_content 'Sinatra wins'
      end

      scenario 'Players can draw' do
        visit '/'
        fill_in :player1_name, with: 'Luke'
        fill_in :player2_name, with: 'Sinatra'
        click_button('submit')
        click_button('paper', :match => :first)
        click_button('p2 paper')
        click_button('fight')
        expect(page).to have_content 'It\'s a draw!'
      end
    end
end
