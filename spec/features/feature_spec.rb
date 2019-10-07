describe 'Rock Paper scissors app' do
  let(:name) { 'Hal 900' }
  feature 'player can enter a name' do
    it 'allows a player to enter a name succesfully' do
      submit_name(name)
      expect(page).to have_content "Hi #{name}"
    end
  end

  feature 'playing the game' do
    it 'allows a player to make a choice' do
      choice = 'rock'
      submit_name(name)
      choose choice
      click_on 'Submit'
      expect(page).to have_content("You chose #{choice}")
    end

    it 'calculates the result and shows it to the user' do
      choice = 'rock'
      submit_name(name)
      choose choice
      click_on 'Submit'
      expect(page).to have_content("Play again?")
    end
  end
end
