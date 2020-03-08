feature "playing a game" do
  scenario "see the options avaliable." do
    register_name
    expect(page).to have_content "Hello Peter, welcome to Rock paper scissors."
    expect(page).to have_content "Choose one of the three shapes."
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
  
  scenario "Choose between Rock, paper or scissors." do
    register_name
    click_button "Rock"
    expect(page).to have_content "You chose Rock"
  end
end




# User Story 2

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors