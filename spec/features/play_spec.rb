feature 'Play page' do

  scenario "Can enter a name and see it displayed" do
    sign_in_and_play
    expect(page).to have_content("Marianne VS COMPUTER")
  end

  scenario "Can see the option to play ROCK" do
    sign_in_and_play
    expect(page).to have_content("ROCK")
  end

  scenario "Can see the option to play PAPER" do
    sign_in_and_play
    expect(page).to have_content("PAPER")
  end

  scenario "Can see the option to play SCISSORS" do
    sign_in_and_play
    expect(page).to have_content("SCISSORS")
  end

end
