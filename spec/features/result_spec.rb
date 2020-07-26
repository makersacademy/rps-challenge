 require './spec/spec_helper.rb'

feature 'Result' do
    scenario 'player selects one of the three' do
        visit('/result')
        # within(form) do
        # select 'rock', from: 'option'
        
        # end
        click_button 'Wish to play again?'
        expect(page).to have_content 'You selected Rock'
    end
end