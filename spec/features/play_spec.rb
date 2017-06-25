
describe 'first play page' do
  before do
    sign_in
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
    
    feature 'has 2 play buttons' do
      scenario 'has play sudden death button' do
        expect { find_button('Play Rock, Paper, Scissors sudden death!!!!') }.to_not raise_error
      end
      
      scenario 'has play 3 out of 5 button' do
        expect { find_button('Play Rock, Paper, Scissors 3 out of 5!!!!') }.to_not raise_error
      end
    end
  end
end

describe 'subsequent play pages' do
  
  before do
    sign_in_and_play_multiple_next
  end
  feature 'has play button for mutliplay game' do
    scenario 'has play button' do
      expect { find_button('Play') }.to_not raise_error
    end
  end
  
end
