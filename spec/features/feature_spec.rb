describe 'App Features' do
  name = 'J. Bloggs'
  name2 = 'Mrs. Bloggs'

  before do
    #make computers always choose scissors
    allow(Kernel).to receive(:rand).and_return 2
    enter_name_and_play(name)
  end

  feature 'enter names' do
    #As a marketeer
    #So that I can see my name in lights
    #I would like to register my name before playing an online game
    scenario 'player enters name and it is displayed' do
      expect(page).to have_content('Make your choice J. Bloggs...')
    end
  end

  feature 'play against computer' do
    #As a marketeer
    #So that I can enjoy myself away from the daily grind
    #I would like to be able to play rock/paper/scissors
    scenario 'player plays a game against the computer' do
      click_button 'rock'
      expect(page).to have_content('The winner is J. Bloggs!')
    end
  end

  feature 'play again' do
    scenario 'clicking play again button after game starts new game' do
      click_button 'scissors'
      click_button 'Play Again...'
      expect(page).to have_content('Make your choice J. Bloggs...')
    end
  end
  
  feature 'return to index' do
    scenario 'clicking play again button after game starts new game' do
      click_button 'paper'
      click_button 'Return to Index'
      expect{page.find('#title')}.to_not raise_error
    end
  end

  feature 'play against another player' do
    scenario 'two people will play' do
      enter_names_and_play_2_player(name, name2)
      click_button 'rock'
      click_button 'paper'
      expect(page).to have_content('The winner is ' + name2 + '!')
    end
  end
end
