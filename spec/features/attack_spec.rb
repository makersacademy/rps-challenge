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

  scenario '>computer should play back random attack when any choice is clicked' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("Your opponent played Rock.")
  end

  scenario '>should be allowed to play again after attack' do
    sign_in_and_play
    click_button "Scissors"
    click_button "Play Again"
    expect(page).to have_content("Hi, Name. Rock, paper, scissors?")
  end

  scenario '>should be allowed to return to home page' do
    sign_in_and_play
    click_button "Scissors"
    click_button "Home"
    expect(page).to have_content("Welcome to Rock, Paper, Scissors World")
  end

  scenario '>should tell you if you win' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content("You win this round!")
  end
end
