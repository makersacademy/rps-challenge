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
      expect(page).to have_content 'Result'
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
      expect(page).to have_content 'Result'
    end
  end

  context 'calculates winner' do
    scenario 'player 1 wins' do
      sign_in_and_play_p2
      select_lizard
      select_spock
      expect(page).to have_content 'Player1 wins'
    end

    scenario 'player 2 wins' do
      sign_in_and_play_p2
      select_spock
      select_lizard
      expect(page).to have_content 'Player2 wins'
    end

    scenario 'draw' do
      sign_in_and_play_p2
      select_spock
      select_spock
      expect(page).to have_content 'Draw'
    end
  end

end
