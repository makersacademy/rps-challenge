require_relative 'feature_spec_helper.rb'

feature 'Play game' do
  context 'Given that the player has registered, ' do
    before(:each) do
      player_name = 'Simon'
      register_player(player_name: player_name)
    end
    
    scenario 'Should display rock option' do
      expect(page.find_by_id('move_options')).to have_content("Rock") 
    end

    scenario 'Should display paper option' do
      expect(page.find_by_id('move_options')).to have_content("Paper") 
    end

    scenario 'Should display scissors option' do
      expect(page.find_by_id('move_options')).to have_content("Scissors") 
    end

    describe 'When player selects an option and selects to play, ' do
      before(:each) do
        choose('rock')
        click_button("play")
      end

      scenario 'Should, if the player loses, inform the player of the result' do
        expect(page).to have_content("SUCK IT, LOSER!") 
      end

      scenario 'Should, if the player wins, inform the player of the result' do
        expect(page).to have_content("Truly, you are the champion.") 
      end
    end
  end
end
