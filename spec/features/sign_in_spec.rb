
feature "Sign in" do
  scenario "It lets the user enter their name if they have not visited before" do
    File.delete("./lib/name_log.txt") if File.file?('./lib/name_log.txt')
    visit "/"
    fill_in "player_name", :with => "Costanza"
    click_button "Submit"
    expect(page).to have_text("Hi Costanza, get ready to play R-P-S!")
  end

  scenario "It remembers the user if they have signed in before" do
    sign_in
    visit "/"
    expect(page).to have_text("Hi Costanza, get ready to play R-P-S!")
  end
end

  feature "Click play" do
    scenario "Clicking on play will launch a new round of the game" do
    sign_in
    visit "/splash"
    click_link "click here"
    expect(page).to have_text("Round 1!")
  end
end

  feature "Gameplay" do
    scenario "Clicking 'rock' will result in the player playing rock as their move" do
    sign_in
    visit "/play"
    click_link "Rock"
    expect(page).to have_text("You played 'rock'")
    expect(page).not_to have_content("You played 'paper'")
    expect(page).not_to have_content("You played 'scissors'")
    end

    scenario "Clicking 'paper' will result in the player playing paper as their move" do
    sign_in
    visit "/play"
    click_link "Paper"
    expect(page).to have_text("You played 'paper'")
    expect(page).not_to have_content("You played 'rock'")
    expect(page).not_to have_content("You played 'scissors'")
    end

    scenario "Clicking 'scissors' will result in the player playing scissors as their move" do
    sign_in
    visit "/play"
    click_link "Scissors"
    expect(page).to have_text("You played 'scissors'")
    expect(page).not_to have_content("You played 'rock'")
    expect(page).not_to have_content("You played 'paper'")
    end
end
