feature "Shows the sing in form for the user" do 
  scenario "Display user sign in form" do 
    visit("/")
    expect(page).to have_content "Battle APP\nRock Paper Scissors"
  end
end
