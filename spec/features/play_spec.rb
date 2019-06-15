feature "Player can choose option" do
  scenario "Player can choose between Rock, Paper or Scissors" do
    visit "/"
    fill_in(:name, with: "Tolu")
    click_button "Play"
    
    page.has_link?("Rock")
    page.has_link?("Paper")
    page.has_link?("Scissors")
  end
end
