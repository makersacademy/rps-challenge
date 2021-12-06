feature 'user(s) can play a game of rock paper scissors' do

  feature 'user can play a game of rock paper scissors with the computer' do

    before do 
      one_player_sign_in
    end

    feature 'user can choose rock, paper or scissors' do
      scenario 'rock button present' do
        expect(page).to have_selector(:link_or_button, 'ROCK')
      end
  
      scenario 'paper button present' do
        expect(page).to have_selector(:link_or_button, 'PAPER')
      end

      scenario 'scissors button present' do
        expect(page).to have_selector(:link_or_button, 'SCISSORS')
      end

      scenario 'user can select rock' do 
        click_button('ROCK')
        expect(page).to have_content 'Patos: ROCK'
      end

      scenario 'user can select paper' do 
        click_button('PAPER')
        expect(page).to have_content 'Patos: PAPER'
      end

      scenario 'user can select scissors' do 
        click_button('SCISSORS')
        expect(page).to have_content 'Patos: SCISSORS'
      end
    end

    scenario 'after user selects their move, the computer presents their move' do
      click_button('ROCK')
      expect(page).to have_content 'Computer: PAPER'
    end
  end

  feature 'two players can play a game of rock paper scissors together' do
    before do 
      two_player_sign_in
    end

    scenario 'player1 is prompted to select their move' do
      expect(page).to have_content('Patos make your move')
    end

    scenario 'player2 is prompted to select their move' do
      click_button('ROCK')
      expect(page).to have_content('Quackers make your move')
    end   

    scenario 'both players moves are presented on the results page' do
      click_button('ROCK')
      click_button('SCISSORS')
      expect(page).to have_content('Patos: ROCK | Quackers: SCISSORS')
    end
  end
end
