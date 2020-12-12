feature "check cards" do
  scenario "welcome to user" do
    signin
    expect(page).to have_content "Javi please choose your card"
  end

  scenario "there is a 'rock' card" do
    signin
    find_button("ROCK").click
  end
  scenario "there is a 'paper' card" do
    signin
    find_button("PAPER").click
  end
  scenario "there is a 'scissors' card" do
    signin
    find_button("SCISSORS").click
  end
end
