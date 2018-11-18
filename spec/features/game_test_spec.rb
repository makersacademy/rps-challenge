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
    expect(page).to have_content "You Win"
  end

  feature 'After playing rock, paper, scissors' do
    scenario 'Player is returned to the start' do
      sign_in
      choose_scissors
      click_button "Play again??"
      expect(page).to have_current_path "/"
    end
  end



end
