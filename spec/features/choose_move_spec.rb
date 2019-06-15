feature "Player can choose option" do
  scenario "Player can choose between Rock, Paper or Scissors" do
    register_name_and_play    
    page.has_link?("Rock")
    page.has_link?("Paper")
    page.has_link?("Scissors")
  end
end
