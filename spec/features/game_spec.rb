require_relative 'feature_spec_helper.rb'

feature 'Play game' do
  context 'Given that player has registered, ' do
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
  end
end
