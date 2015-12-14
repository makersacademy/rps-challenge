describe 'App Features' do
  name = 'J. Bloggs'
  name2 = 'Mrs. Bloggs'

  before do
    #make computers always choose scissors
    allow_any_instance_of(Array).to receive(:sample).and_return :scissors
    enter_name_and_play(name)
  end

  feature 'enter names' do
    scenario 'player enters name and it is displayed' do
      expect(page).to have_content('Make your choice J. Bloggs...')
    end
  end

  feature 'play against computer' do
    scenario 'player plays a game against the computer and wins' do
      click_button 'rock'
      expect(page).to have_content('J. Bloggs wins!')
    end

    scenario 'player plays a game against the computer and loses' do
      click_button 'paper'
      expect(page).to have_content('Computer wins!')
    end

    scenario 'player plays a game against the computer and draws' do
      click_button 'scissors'
      expect(page).to have_content("It's a draw!")
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
      expect(page).to have_content(name2 + ' wins!')
    end
  end
end
