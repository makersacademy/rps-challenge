require "capybara/rspec"

feature "Web app opens correctly:" do
  scenario "'/' Returns welcome text" do
    visit('/')
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end

end

feature "Game can store user's name:" do
  scenario "User inputs name and sees it on next screen" do
    sign_in_and_play
    expect(page).to have_content "Test Player"
  end
end

feature "Play rock, paper scissors:" do
  scenario "A new game is presented after sign in" do
    sign_in_and_play
    expect(page).to have_content "Choose Rock, Paper or Scissors"
    expect(page).to have_select('rps_select', options: ['Rock', 'Paper', 'Scissors'])
  end

  scenario "User is shown their choice after submitting" do
    sign_in_and_play
    choose_rock_and_submit
    expect(page).to have_content "You chose Rock"
  end

  # scenario "Result of the game is shown after submitting" do
  #   sign_in_and_play
  #   choose_rock_and_submit
  #   expect(page).to have_content "Computer chose"
  #   expect(page).to have_content "wins!"
  # end

end
