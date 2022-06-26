feature "play" do

  before do
    visit ('/')
    fill_in("player", with: "Farzan")
    click_on("Let's play!")
  end 

  scenario "displays rock paper scissor buttons" do
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end 
  
end
