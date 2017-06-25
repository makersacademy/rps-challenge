
describe 'sign in and play sudden death' do
  
  before do
    sign_in_and_play_multiple_subsequent
  end
  
  feature 'shows the winner' do
    scenario 'shows player 2 win' do
      expect(page).to have_content "Player 2 wins"
    end
    
    feature 'shows continue button' do
      scenario 'shows continue button for 3 out of 5 games' do
        expect { find_button('Next round')}.to_not raise_error
      end
    end
  end
end
