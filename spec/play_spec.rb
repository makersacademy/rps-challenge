require 'spec_helper'
feature 'playing a game' do
    before do 
        visit ('/')
        fill_in :player_name, with: 'Meg'
        click_button 'submit'
        expect(page).to have_content 'Meg'
    end 
    scenario 'see the shape options' do 
       expect(page).to have_button 'Rock'
       expect(page).to have_button 'Paper'
       expect(page).to have_button 'Scissors'
    end 

    scenario "i want to be able to choose an option" do 
        click_button "Rock"
        expect(page).to have_content "You chose Rock!"
    end 

    scenario "Game chooses 'Rock'" do 
        click_button "Rock"

        message = find("#opponent").text
        expect(possible_messages).to include message
    end 


    def possible_messages 
        [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}" }
    end
end 

