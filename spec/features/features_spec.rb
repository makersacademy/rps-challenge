require './app'

describe RockPaperScissors do 
  describe "The homepage", type: :feature do 

    it "Shows a greeting message" do  
      visit '/'
      expect(page).to have_content 'Welcome to Rock, Paper, Scissors!' 
    end 
    it 'asks a user for their name' do 
      visit '/'
      expect(page).to have_content 'Enter your name:'
    end 
    feature 'Enter names' do
      scenario 'submitting names' do
        visit('/')
        fill_in :player, with: 'Cap'
        click_button 'Submit'
        expect(page).to have_content 'Cap vs Computer'
      end
    end
    it 'chooses a weapon' do 
      sign_in_and_play
      choose('playerchoice', option: 'Rock') 
      click_button 'submit'
      expect(page).to have_content 'Cap chose: Rock'
    end  
  end
end 
