feature 'Player can choose their weapon' do  
  scenario 'Player 1 chooses their weapon' do
  	sign_in_and_play
  	fill_in :player_1_weapon, with: :scissors
  	expect(page).to have_content 'Rob: :scissors'
  end  	
end  