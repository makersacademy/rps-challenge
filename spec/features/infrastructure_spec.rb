feature "Testing infrastructure" do

  scenario "Can run content on homepage" do
    visit('/')
    expect(page).to have_content 'Enter player names:'
  end

  scenario "to start playing" do
    sign_in_and_play
    expect(page).to have_content "Rocky vs. Stoney. Fight!"
  end

  scenario "choosing rock attack" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Rocky picked rock. Stoney picked scissors. rock damaged scissors. Rocky wins!"
  end

  scenario "choosing paper attack" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Rocky picked paper. Stoney picked scissors. Scissors damaged paper. Rocky lost!"
  end

  scenario "choosing scissors attack" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Rocky picked scissors. Stoney picked paper. Scissors damaged paper. Rocky wins!"
  end

  scenario "testing for random paper attack" do
    sign_in_and_play
    click_button "Rock_two"
    expect(page).to have_content "I am doing a test here"
  end
end
