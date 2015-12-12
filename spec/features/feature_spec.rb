describe 'App Features' do
  name = 'J. Bloggs'

  feature 'Enter names' do
    #As a marketeer
    #So that I can see my name in lights
    #I would like to register my name before playing an online game
    scenario 'player enters name and it is displayed' do
      enter_name_and_play(name)
      expect(page).to have_content('J. Bloggs is playing...')
    end
  end

  feature 'Play Game' do
    #As a marketeer
    #So that I can enjoy myself away from the daily grind
    #I would like to be able to play rock/paper/scissors
    xscenario 'player plays a game against the computer' do
      enter_name_and_play(name)
      allow(Kernel).to receive(:rand).and_return 2
      click_button 'READY!'
      click_button 'ROCK'
      expect(page).to have_content('You win!')
    end
  end
end
