require_relative 'web_helper'

feature RPS do

    scenario 'register player name before starting' do
        register_name
        expect(page).to have_content "Chris"
    end

    scenario 'have the option to pick rock' do
        register_name 
        expect(page).to have_content "Rock"
    end

    scenario 'have the option to pick paper' do
        register_name 
        expect(page).to have_content "Paper"
    end
    
    scenario 'have the option to pick scissors' do
        register_name 
        expect(page).to have_content "Scissors"
    end
end