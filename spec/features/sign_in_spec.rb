
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

  
