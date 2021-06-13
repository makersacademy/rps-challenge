require 'spec_helper'

feature 'playing a game' do 
    SEED = 384675

    before do 
        visit '/'
        fill_in 'name', with: 'Merryn'
        click_button 'Submit'
        expect(page).to have_content 'Merryn'
    end
    scenario 'see the shape options' do
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end
    scenario 'choose a shape to play' do
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock'
    end

    scenario 'game chooses Rock' do
        click_button 'Rock'

        message = find(:css, "#opponent").text

        expect(possible_messages).to include message
    end

    scenario 'game chooses a random option' do
        srand(SEED)
        click_button 'Rock'
        expect(page).to have_content 'Opponent chose Scissors'
    end

    scenario 'I win' do
        srand(SEED)
        click_button 'Rock'
        expect(page).to have_content 'You win!'
    end

    scenario 'I lose' do
        srand(SEED)
        click_button 'Paper'
        expect(page).to have_content 'You lose!'
    end

    scenario 'I draw' do
        srand(SEED)
        click_button 'Scissors'
        expect(page).to have_content 'You draw!'
    end

    # context 'end game' do
    #     describe '#win?' do
    # end

    def possible_messages
        [:Rock, :Paper, :Scissors]. map { |shape| "Opponent chose #{shape}"}

    end
end