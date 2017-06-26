
describe 'first play page' do
  before do
    sign_in_and_play_multiple_next
  end
  
  feature 'shows players names' do
    scenario 'shows player 1 name' do
      expect(page).to have_content 'Momo'
    end
    
    scenario 'shows player 2 name' do
      expect(page).to have_content 'Computer'
    end
  end
  
  feature 'shows 3 options for each player' do
    scenario 'shows rock option for player 1' do
      expect { page.choose("rock_player_1") }.to_not raise_error
    end
    
    scenario 'shows paper option for player 1' do
      expect { page.choose("paper_player_1") }.to_not raise_error
    end
    
    scenario 'shows scissors option for player 1' do
      expect { page.choose("scissors_player_1") }.to_not raise_error
    end
    
    scenario 'shows rock option for player 2' do
      expect { page.choose("rock_player_2") }.to_not raise_error
    end
    
    scenario 'shows paper option for player 2' do
      expect { page.choose("paper_player_2") }.to_not raise_error
    end
    
    scenario 'shows scissors option for player 2' do
      expect { page.choose("scissors_player_2") }.to_not raise_error
    end
    
    scenario 'has play button' do
      expect { find_button('Play') }.to_not raise_error
    end
    
  end
end
