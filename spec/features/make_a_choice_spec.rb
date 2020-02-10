require 'spec_helper'

feature 'Making a choice' do
    before do 
        visit '/'
        fill_in :player_1_name, with: 'Dave'
        click_button 'Submit'
    end 
    #the marketeer will be presented the choices (rock, paper and scissors)
    scenario 'see the different options' do
        expect(page).to have_content 'Make a choice: Rock, Paper or Scissors'
    end
    #the marketeer can choose one option
    scenario 'choose an option' do
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock'
    end
    #the game will choose a random option
    scenario 'game choose rock' do
        click_button 'Rock'
        message = find(:css, "#computer").text
        expect(possible_messages).to include message
    end

    # #a winner will be declared
    # scenario 'Dave is the winner' do
    #     click_button 'Paper'
    #     message = find(:css, "#computer").text
    #     expect(page).to have_content 'Dave is the winner'
    # end

    def possible_messages
        [:rock, :paper, :scissors].map { |shape| "Computer chose #{shape.to_s.capitalize}" }
    end

end