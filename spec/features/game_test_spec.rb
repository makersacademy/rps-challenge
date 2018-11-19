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

end
