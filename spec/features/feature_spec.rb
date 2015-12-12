name = 'J. Bloggs'

describe 'Features' do
  feature 'Enter names' do
    #As a marketeer
    #So that I can see my name in lights
    #I would like to register my name before playing an online game
    scenario 'player enters name and it is displayed' do
      enter_name_and_play(name)
      expect(page).to have_content('J. Bloggs is playing...')
    end
  end
  #As a marketeer
  #So that I can enjoy myself away from the daily grind
  #I would like to be able to play rock/paper/scissors
end
