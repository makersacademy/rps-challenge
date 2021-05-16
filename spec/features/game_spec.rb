require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'playing the RPS game' do
    before do
        visit '/'
        fill_in 'name', with: 'JP'
        click_button 'Submit'
    end
    
    scenario 'see options' do
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end

    scenario 'select an option' do
        click_button 'Scissors'
        expect(page).to have_content('You chose scissors')
    end

    context 'finish the game' do
        
        scenario 'player beats the machine' do
            allow(MachineChoice::CHOICES).to receive(:sample).and_return(:scissors)
            click_button 'Rock'
            expect(page).to have_content('You Win!')
        end

        scenario 'player losses to the machine' do
            allow(MachineChoice::CHOICES).to receive(:sample).and_return(:paper)
            click_button 'Rock'
            expect(page).to have_content('You Lose!')
        end

        scenario 'player draws machine' do
            allow(MachineChoice::CHOICES).to receive(:sample).and_return(:paper)
            click_button 'Paper'
            expect(page).to have_content("You Draw!")
        end
    end
end