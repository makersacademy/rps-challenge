require_relative '../../lib/player'

feature 'playing the game with two player' do
  let(:player1_name) { "Lester Flatt" }
  let(:player2_name) { "Earl Scruggs" }

  before do
    register_two_players(player1_name, player2_name)
  end

  context "if player 1 chooses 'rock'" do
    before do
      click_button 'Rock'
    end

    context "and player 2 chooses 'rock'" do
      scenario "it's a draw" do
        click_button 'Rock'
        expect(page).to have_content "It's a draw"
      end
    end

    context "and player 2 chooses 'paper'" do
      scenario "player 2 wins" do
        click_button 'Paper'
        expect(page).to have_content "#{player2_name} wins"
      end
    end

    context "and player 2 chooses 'scissors'" do
      scenario "player 1 wins" do
        click_button 'Scissors'
        expect(page).to have_content "#{player1_name} wins"
      end
    end
  end

  context "if player 1 chooses 'paper'" do
    before do
      click_button('Paper')
    end

    context "and player 2 chooses 'rock'" do
      scenario "player 1 wins" do
        click_button 'Rock'
        expect(page).to have_content "#{player1_name} wins"
      end
    end

    context "and player 2 chooses 'paper'" do
      scenario "it's a draw" do
        click_button 'Paper'
        expect(page).to have_content "It's a draw"
      end
    end

    context "and player 2 chooses 'scissors'" do
      scenario "player 2 wins" do
        click_button 'Scissors'
        expect(page).to have_content "#{player2_name} wins"
      end
    end
  end

  context "if player 1 chooses 'scissors'" do
    before do
      click_button('Scissors')
    end

    context "and player 2 chooses 'rock'" do
      scenario "player 2 wins" do
        click_button 'Rock'
        expect(page).to have_content "#{player2_name} wins"
      end
    end

    context "and player 2 chooses 'paper'" do
      scenario "player 1 wins" do
        click_button 'Paper'
        expect(page).to have_content "#{player1_name} wins"
      end
    end

    context "and player 2 chooses 'scissors'" do
      scenario "it's a draw" do
        click_button 'Scissors'
        expect(page).to have_content "It's a draw"
      end
    end
  end
end
