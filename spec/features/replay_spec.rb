feature 'replay the game' do
	scenario 'once finished user has the option of playing again' do
		visit('/')
		fill_in :player_name, with: 'Test'
		click_on('submit')
		choose(option: 'paper')
		click_on('submit')
		click_on('play again?')
		expect(current_path).to eq('/play')
	end
end