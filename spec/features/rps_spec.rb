require './app'

feature 'Configure Player 1' do
  scenario 'Enter and verify name for player 1' do
    sign_in_and_play
    expect(page).to have_content('Jon')
  end
end

feature 'Choose Rock, Paper or Scissors' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    make_choice('rock')
    expect(page).to have_content('Rock')
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    make_choice('paper')
    expect(page).to have_content('Paper')
  end

  scenario 'Player chooses Scissors' do
    sign_in_and_play
    make_choice('scissors')
    expect(page).to have_content('Scissors')
  end
end
