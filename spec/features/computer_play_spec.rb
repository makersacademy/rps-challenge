feature 'Computer play' do

  scenario "Should display the players move when player plays rock" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content("You played rock !!!")
  end

  scenario "Should display the players move when player plays paper" do
    sign_in_and_play
    click_button "PAPER"
    expect(page).to have_content("You played paper !!!")
  end

  scenario "Should display the players move when player plays scissors" do
    sign_in_and_play
    click_button "SCISSORS"
    expect(page).to have_content("You played scissors !!!")
  end

  scenario "Should display the computers move regardless of players choice (player chooses rock)" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content("Computer's move: rock")
  end

  scenario "Should display the computers move regardless of players choice (player chooses paper)" do
    sign_in_and_play
    click_button "PAPER"
    expect(page).to have_content("Computer's move: rock")
  end

  scenario "Should display the computers move regardless of players choice (player chooses scissors)" do
    sign_in_and_play
    click_button "SCISSORS"
    expect(page).to have_content("Computer's move: rock")
  end

end
