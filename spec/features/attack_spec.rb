feature '#attack' do
  scenario '>should play turn as rock if rock button is clicked' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You played Rock.")
  end

  scenario '>should play turn as paper if paper button is clicked' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content("You played Paper.")
  end

  scenario '>should play turn as scissors if scissor button is clicked' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("You played Scissors.")
  end
end
