feature 'two player /play' do
  context 'player choice' do
    scenario 'displays player 1\'s choice' do
      enter_two_names_and_play
      click_link('rock.jpg')
      click_link('scissors.jpg')
      expect(page).to have_content 'playerX1\'s choice: rock'
    end
    scenario 'displays player 2\'s choice' do
      enter_two_names_and_play
      click_link('rock.jpg')
      click_link('scissors.jpg')
      expect(page).to have_content 'playerX2\'s choice: scissors'
    end
  end
end
