require_relative 'feature_spec_helper.rb'

feature 'Register player' do
  describe 'When player enters their name and selects submit, ' do
    scenario 'Should display their name' do
      player_name = 'Simon'
      register_player(player_name: player_name)

      expect(page.find_by_id('player_name')).to have_content(player_name) 
    end
  end
end
