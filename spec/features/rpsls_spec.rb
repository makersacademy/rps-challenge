feature 'FEATURE:' do

  context 'plays against another player' do
    scenario 'starts game against another player' do
      sign_in_and_play_p2
      expect(page).to have_content 'Choose your hand!'
    end

    scenario 'player 1 chooses a hand' do
      sign_in_and_play_p2
      select_spock
      expect(page).to have_content 'Spock'
    end

    scenario 'player 2 chooses a hand' do
      sign_in_and_play_p2
      select_lizard
      select_spock
      expect(page).to have_content 'Spock'
    end
  end

  context 'plays against computer' do
    scenario 'starts game against computer' do
      sign_in_and_play_comp
      expect(page).to have_content 'Choose your hand!'
    end

    scenario 'player 1 chooses a hand' do
      sign_in_and_play_comp
      select_lizard
      expect(page).to have_content 'Lizard'
    end
  end

end
