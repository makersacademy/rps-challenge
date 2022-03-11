feature "play" do

  before do
    visit '/'
    fill_in("player", with: "Archie")
    click_on("Let's Go!")
  end 

  scenario "displays rock paper scissor buttons" do
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end 

  # scenario "player selects rock and loses" do
  #   click_on("Rock")
  #   expect(page).to have_content("You've lost")
  # end 

  # scenario "player selects paper and loses" do
  #   click_on("Paper")
  #   expect(page).to have_content("You've lost")
  # end 

  # scenario "player selects scissors and loses" do
  #   click_on("Scissors")
  #   expect(page).to have_content("You've lost")
  # end 

  # scenario "player selects rock and wins" do
  #   click_on("Rock")
  #   expect(page).to have_content("You've won!")
  # end 

  # scenario "player selects paper and wins" do
  #   click_on("Paper")
  #   expect(page).to have_content("You've won!")
  # end 

  # scenario "player selects scissors and wins" do
  #   click_on("Scissors")
  #   expect(page).to have_content("You've won!")
  # end 

end
