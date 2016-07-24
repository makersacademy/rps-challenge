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

    feature 'play game' do
      scenario 'Plays a game' do
        visit '/'
        fill_in :player1_name, with: 'Luke'
        click_button('submit')
        click_button('rock')
        expect(page).to have_content 'Luke chose rock'
      end
    end




    # feature 'weapon' do
    #   scenario 'Player can choose a weapon' do
    #     visit '/'
    #     fill_in :player1_name, with: 'Luke'
    #     click_button('submit')
    #     click_button('rock')
    #     expect(page).to have_content 'The game is over!'
    #   end
    # end



end
