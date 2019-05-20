feature 'Play round' do
    scenario 'player chooses rock' do
      sign_in_and_play
    	click_button 'Rock'
    	expect(page).to have_content 'Rock'
    end
end
