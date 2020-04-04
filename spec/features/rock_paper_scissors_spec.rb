feature 'Rock, Paper, Scissors' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature 'When making a choice the player' do
    scenario 'Can pick Rock' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "You picked Rock!"
    end

    scenario 'Can pick Paper' do
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "You picked Paper!"
    end

    scenario 'Can pick Scissors' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content "You picked Scissors!"
    end
  end
  
  feature 'Opponent can chose' do
    scenario 'Rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "Your opponent chose Rock!"
    end

    scenario 'Paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "Your opponent chose Paper!"
    end

    scenario 'Scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content "Your opponent chose Scissors!"
    end
  end

  feature 'Winning and Losing' do
    context 'When picking Rock' do
      scenario 'player can win' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
        sign_in_and_play
        click_button 'Rock'
        expect(page).to have_content "You Win!"
      end

      scenario 'player can draw' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
        sign_in_and_play
        click_button 'Rock'
        expect(page).to have_content "You Draw!"
      end

      scenario 'player can lose' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
        sign_in_and_play
        click_button 'Rock'
        expect(page).to have_content "You Lose!"
      end
    end

    context 'When picking Scissors' do
      scenario 'player can win' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
        sign_in_and_play
        click_button 'Scissors'
        expect(page).to have_content "You Win!"
      end

      scenario 'player can draw' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
        sign_in_and_play
        click_button 'Scissors'
        expect(page).to have_content "You Draw!"
      end

      scenario 'player can lose' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
        sign_in_and_play
        click_button 'Scissors'
        expect(page).to have_content "You Lose!"
      end
    end

    context 'When picking Paper' do
      scenario 'player can win' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Rock)
        sign_in_and_play
        click_button 'Paper'
        expect(page).to have_content "You Win!"
      end

      scenario 'player can draw' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Paper)
        sign_in_and_play
        click_button 'Paper'
        expect(page).to have_content "You Draw!"
      end

      scenario 'player can lose' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
        sign_in_and_play
        click_button 'Paper'
        expect(page).to have_content "You Lose!"
      end
    end
  end
end
