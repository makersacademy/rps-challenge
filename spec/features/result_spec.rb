
describe 'sign in and play sudden death' do
  
  before do
    sign_in_and_play_sudden_death
  end
  
  feature 'shows the winner' do
    scenario 'shows player 1 win' do
      expect(page).to have_content "This round Momo wins"
    end
    
    feature 'doesn\'t show continue button' do
      scenario 'doesn\'t show continue button for sudden death' do
        expect { find_button('Next round') }.to raise_error(Capybara::ElementNotFound)
      end
    end
  end
end

describe 'sign in and play 3 out of 5' do
  before do
    sign_in_and_play_multiple
  end
  
  feature 'shows continue button' do
    scenario 'shows continue button for 3 out of 5 games' do
      expect { find_button('Next round') }.to_not raise_error
    end
  end
end
