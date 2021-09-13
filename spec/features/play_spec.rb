require 'spec_helper'

feature 'start playing a game' do
    before do
        visit '/'
        fill_in 'name', with: 'Boris'
        click_button 'Submit'
    end

    scenario 'see the game options' do
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end

    scenario 'choise a object to start game' do
        click_button 'Rock'
        expect(page).to have_content 'You chose Rock!'
        click_button 'Paper'
        expect(page).to have_content 'You chose Paper!'
        click_button 'Scissors'
        expect(page).to have_content 'You chose Scissors!'
    end

end