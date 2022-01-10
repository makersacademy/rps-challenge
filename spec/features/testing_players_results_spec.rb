feature 'Presenting player with choices' do
     
    scenario 'The page should show players result, either (Rock, Paper or Scissors)' do
        #arrange
        visit('/')
        fill_in :player_1, with: 'Ellz'
        click_on 'Submit'
        fill_in :player_choice, with: 'Rock'
        click_on 'Submit'
        #assert
        expect(page).to have_content('Rock')
        
    end
end