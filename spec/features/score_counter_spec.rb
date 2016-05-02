feature 'Score Counter' do
  scenario 'main page has a scoreboard' do
    sign_in_and_play
    expect(page).to have_content "Lord Megatron: 0 vs Computer: 0"
  end

  scenario 'winning a game adds a point to the counter' do
    winning_decisions_confirmed
    click_button "I'm not afraid! Lets do this!"
    click_button "Play again!"
    expect(page).not_to have_content "Lord Megatron: 0 vs Computer: 0"
    expect(page).to have_content "Lord Megatron: 1 vs Computer: 0"
  end
end