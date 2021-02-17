feature "Result" do

  scenario "Player is told what they selected" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content("Hyko chose: ROCK")
  end

  scenario "Player can play again" do
    sign_in_and_play
    click_button "ROCK"
    click_button "Play again"
    expect(page).to have_content("⛰ 📃 ✂️ Hyko vs Computer ⛰ 📃 ✂️")
  end

  scenario "When player submits 'ROCK' they are told if they've won" do
    allow_any_instance_of(Array).to receive(:sample).and_return("SCISSORS")
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content("Hyko chose: ROCK\nThe computer chose: SCISSORS\nHyko wins!")
  end

  scenario "When I submit 'ROCK' I'm told if I've lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return("PAPER")
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content("The computer wins.")
  end

  scenario "When I submit 'ROCK' I'm told if I've drawn" do
    allow_any_instance_of(Array).to receive(:sample).and_return("ROCK")
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content("It's a draw!")
  end

end
