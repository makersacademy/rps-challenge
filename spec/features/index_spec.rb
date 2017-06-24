
describe 'index.erb' do
  
  before do
    visit '/'
  end
  
  feature 'it shows messages' do
    scenario 'shows welcome message' do
      expect(page).to have_content 'Welcome to Rock Paper Scissors!'
    end
    
    scenario 'shows messagefor player 1 to enter name' do
      expect(page).to have_content 'Player 1 enter your name:'
    end
  end
  
  feature 'it has a name form' do
    scenario 'contains submit button' do
      expect { find_button('Submit') }.to_not raise_error
    end
    
    scenario 'has a field for player 1' do
      expect { find_field('player_1') }.to_not raise_error
    end
  end
end
