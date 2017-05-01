feature 'player chooses weapon' do
  scenario 'displays weapons' do
    start_game
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  # scenario 'player makes a choice' do
  #   start_game
  #   click_button("Rock")
  #   expect(page).to have_content "You choose Rock..."
  # end
  
end
