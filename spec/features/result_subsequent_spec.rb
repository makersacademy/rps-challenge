
describe 'sign in and play sudden death' do
  
  before do
    sign_in_and_play_multiple_subsequent
  end
  
  feature 'shows the winner' do
    scenario 'shows player 2 win' do
      expect(page).to have_content "This round Computer wins"
    end
  end
  
  feature 'shows continue button' do
    scenario 'shows continue button for 3 out of 5 games' do
      expect { find_button('Next round') }.to_not raise_error
    end
  end
  
  feature 'doesn\'t show continue button on the last game' do
    scenario 'doesn\'t show continue button on the 5th games' do
      play_5_times
      expect { find_button('Next round') }.to raise_error(Capybara::ElementNotFound)
    end
  end
  
  feature 'shows final winner' do
    scenario 'shows player 2 as winner' do
      play_5_times
      expect(page).to have_content('Player Computer has won 4 games out of 5!')
    end
  end
  
end
