feature "names" do

  scenario "display homepage" do
    visit '/'
    expect(page).to have_content("Welcome to Rock, Paper and Scissors")
    expect(page).to have_content("Please enter your name")
    expect(page).to have_field("player")
    expect(page).to have_button("Let's Go!")
  end 

  scenario "submit names" do
    visit '/'
    fill_in("player", with: "Archie")
    click_on("Let's Go!")
    expect(page).to have_content("Let's Play Archie")
    expect(page).to have_content("Rock, Paper or Scissors?")
  end
end
