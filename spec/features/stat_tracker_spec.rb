
feature 'Stat tracker' do
  scenario 'player can see total wins, losses and draws' do
    play_as_rock
    click_button("Let's go!")
    expect(page).to have_content "Wins"
    expect(page).to have_content "Losses"
    expect(page).to have_content "Draws"
  end
end
