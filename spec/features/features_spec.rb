require 'spec_helper'


describe 'features' do

  feature 'name form' do
    scenario 'Player can register their name' do
      visit '/'
      fill_in :player1_name, with: 'Luke'
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
