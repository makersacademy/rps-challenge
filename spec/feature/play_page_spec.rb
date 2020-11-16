require_relative '../../app/rps_web'

feature RPSWeb do
  scenario "Displays the player's name after submitting the login form" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    expect(page).to have_content("Constantine\nChoose a weapon:")
  end

  scenario "The header is in the /play page" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    expect(page).to have_content("Rock Paper Scissors")
  end

  scenario "There is an attack button in the /play page" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    expect(page).to have_button("Attack")
  end

  scenario "There is the 'Computer' word in the /play page" do
    visit '/'
    expect(page).to have_button("play")
    fill_in("name", with: "Constantine")
    click_button("play")
    expect(page).to have_content("Computer")
  end
end