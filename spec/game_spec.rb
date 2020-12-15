require './spec/web_helper.rb'  

feature 'Should see home page' do
    scenario 'diplayes the game' do
        game 
        expect(page).to have_content 'Welcome to Rock, Paper and Scissors'
    end
end

feature 'Enter names' do
    scenario 'Play game' do
        play_game 
        expect(page).to have_content 'Ben choice rock, paper, or scisors'
    end
end  

feature 'chose a button' do   
    scenario 'either Rock, paper or scissors' do
        play_game 
        expect(page).to have_content 'Ben choice rock, paper, or scisors'
    end
end 

feature 'outcome' do
    scenario 'see weather you have won, lost or drawed' do
        outcome
        expect(page).to have_content ''
    end
end