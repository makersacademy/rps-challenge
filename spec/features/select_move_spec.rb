feature 'Player move selection' do
  scenario 'Player one can select rock, paper, or scissors' do
    start_game
    expect(page).to have_content "Rock Paper Scissors"
  end
end
