require "./rps.rb"

feature 'Play game' do
  context 'once the player has got an error' do
    scenario 'Player 1 selects play again' do
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
      register_and_play
      visit('/error')
      click_button('Play again >>')
      expect(page).to have_content('Welcome Jay to Rock/ Paper/ Scissors!')
    end
  end
end
