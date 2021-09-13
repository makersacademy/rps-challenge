require 'spec_helper'

feature 'playing a game' do
    PLAY_SEED = 274896

    before do
        visit '/'
        fill_in 'name', with: 'Daniil'
        click_button 'Submit'
    end

    scenario 'see the game options' do
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end

    scenario 'choose option' do
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock!'
    end

    scenario 'Rock chosen' do
        click_button 'Rock'
        message = find(:css, "#opponent").text
        expect(possible_messages).to include message
    end

    scenario 'computer selects random option' do
        srand(PLAY_SEED)
        click_button 'Rock'
        expect(page).to have_content 'Opponent chose Scissors!'
    end   

    context 'end game' do
        before do
            srand(PLAY_SEED)
        end

        scenario 'I win' do
            click_button 'Rock'
            expect(page).to have_content 'You win!'
        end

        scenario 'I lose' do
            click_button 'Paper' 
            expect(page).to have_content 'You lose!'
        end

        scenario 'I draw' do
            click_button 'Scissors'
            expect(page).to have_content 'You draw!'
        end
    end
   
    def possible_messages
        [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
    end
end