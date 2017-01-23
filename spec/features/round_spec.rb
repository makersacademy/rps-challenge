feature "A round:" do
  scenario "The player chooses rock." do
    sign_in_and_play
    click_button "ROCK!"
    expect(page).to have_content "Dylan chose rock!"
  end
  scenario "The player chooses paper." do
    sign_in_and_play
    click_button "PAPER!"
    expect(page).to have_content "Dylan chose paper!"
  end
  scenario "The player chooses scissors." do
    sign_in_and_play
    click_button "SCISSORS!"
    expect(page).to have_content "Dylan chose scissors!"
  end
  # scenario "The player wins the round."
  # sign_in_and_play
  # click_button "ROCK!"

end
