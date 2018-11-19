require 'game'

feature 'Playing rock, paper, scissors' do

  scenario 'Player 1 chooses Rock' do
    sign_in
    choose 'Rock'
    click_button "Submit"
    expect(page).to have_content "Ajay chose Rock"
  end

  scenario 'Player 1 chooses Paper' do
    sign_in
    choose 'Paper'
    click_button "Submit"
    expect(page).to have_content "Ajay chose Paper"
  end

  scenario 'Player 1 chooses Scissors' do
    sign_in
    choose_scissors
    expect(page).to have_content "Ajay chose Scissors"
  end

  scenario 'CPU chooses a random move' do
    allow(MOVES).to receive(:sample) { "Paper" }
    sign_in
    choose_scissors
    expect(page).to have_content "CPU chose Paper"
  end

  scenario 'Page has the content Player 1 wins' do
    allow(MOVES).to receive(:sample) { "Paper" }
    sign_in
    choose_scissors
    expect(page).to have_content "You Won"
  end

  feature 'After playing rock, paper, scissors' do
    scenario 'Player is returned to the start' do
      sign_in
      choose_scissors
      click_button "Play again??"
      expect(page).to have_current_path "/"
    end
  end

  feature '2 player rock, paper, scissors' do
    scenario 'both players names should be displayed on next page' do
      sign_in_two_player
      expect(page).to have_content 'Ryu vs Ken'
    end

    scenario 'player 1 will be asked to make a move' do
      sign_in_two_player
      expect(page).to have_content 'Make your move Ryu'
    end

    scenario 'player 1 and 2 moves can be stored and recalled' do
      players = Player.create("Ryu", "Ken")
      sign_in_two_player
      choose_scissors_then_rock
      expect(Player.instance.move).to eq "Scissors"
    end

    scenario 'player 1 and 2 moves can be stored and recalled' do
      sign_in_two_player
      choose_scissors_then_rock
      expect(Player.instance.move2).to eq "Rock"
    end

    scenario 'player 2 beats player 1' do
      sign_in_two_player
      choose_scissors_then_rock
      expect(page).to have_content "Ryu Lost"
    end

  end
  feature '2 players can play Rock, Paper, Scissors, Spock' do
    scenario 'win' do
      sign_in_two_player
      choose 'Lizard'
      click_button "Submit"
      choose 'Spock'
      click_button "Submit"
      expect(page).to have_content "Ryu Won"
    end

    scenario 'win' do
      sign_in_two_player
      choose 'Spock'
      click_button "Submit"
      choose 'Rock'
      click_button "Submit"
      expect(page).to have_content "Ryu Won"
    end

    scenario 'lose' do
      sign_in_two_player
      choose 'Spock'
      click_button "Submit"
      choose 'Paper'
      click_button "Submit"
      expect(page).to have_content "Ryu Lost"
    end

    scenario 'lose' do
      sign_in_two_player
      choose 'Lizard'
      click_button "Submit"
      choose 'Scissors'
      click_button "Submit"
      expect(page).to have_content "Ryu Lost"
    end

    scenario 'draw' do
      sign_in_two_player
      choose 'Lizard'
      click_button "Submit"
      choose 'Lizard'
      click_button "Submit"
      expect(page).to have_content "Ryu Drew"
    end

    scenario 'draw' do
      sign_in_two_player
      choose 'Spock'
      click_button "Submit"
      choose 'Spock'
      click_button "Submit"
      expect(page).to have_content "Ryu Drew"
    end
  end

  feature '1 player can play Rock, Paper, Scissors, Spock' do
    scenario 'win' do
      allow(MOVES).to receive(:sample) { "Spock" }
      sign_in
      choose 'Lizard'
      click_button "Submit"
      expect(page).to have_content "You Won"
    end

    scenario 'win' do
      allow(MOVES).to receive(:sample) { "Lizard" }
      sign_in
      choose_scissors
      expect(page).to have_content "You Won"
    end

    scenario 'lose' do
      allow(MOVES).to receive(:sample) { "Rock" }
      sign_in
      choose 'Lizard'
      click_button "Submit"
      expect(page).to have_content "You Lost"
    end

    scenario 'lose' do
      allow(MOVES).to receive(:sample) { "Spock" }
      sign_in
      choose 'Rock'
      click_button "Submit"
      expect(page).to have_content "You Lost"
    end

    scenario 'draw' do
      allow(MOVES).to receive(:sample) { "Lizard" }
      sign_in
      choose 'Lizard'
      click_button "Submit"
      expect(page).to have_content "You Drew"
    end

    scenario 'draw' do
      allow(MOVES).to receive(:sample) { "Spock" }
      sign_in
      choose 'Spock'
      click_button "Submit"
      expect(page).to have_content "You Drew"
    end
  end

end
