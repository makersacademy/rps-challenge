feature "Welcome screen" do
  scenario "displayed when entering website" do
    visit "/"
    expect(page).to have_content("Welcome to Rock, Paper, Scissors")
  end

  scenario "submit button takes you to Name Input page" do
    visit "/"
    select "Single player", :from => "play_mode"
    click_button "Enter"
    expect(page).to have_content("Enter your name:")
  end

  scenario "displays multiplayer option" do
    visit "/"
    select "Multiplayer", :from => "play_mode"
    click_button "Enter"
    expect(page).not_to have_content("Enter your name:")
    expect(page).to have_content("Player 1 your name:")
    expect(page).to have_content("Player 2 your name:")
  end
end
