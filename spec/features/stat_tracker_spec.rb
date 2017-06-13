
feature 'Stat tracker' do
  scenario 'player can see total wins, losses and draws' do
    sign_in_and_play
    expect(page).to have_content "Wins"
    expect(page).to have_content "Losses"
    expect(page).to have_content "Draws"
  end
end
