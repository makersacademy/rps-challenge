feature "Player can choose a weapon" do
  scenario "Player can choose between Rock, Paper or Scissors" do
    register_name_and_play    
    page.has_link?("Rock")
    page.has_link?("Paper")
    page.has_link?("Scissors")
  end
end

feature "Computer can choose a weapon" do 
  scenario "Computer chooses Rock" do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:Rock)
    register_name_and_play
    click_link("Rock")   
    expect(page).to have_content("Computer selects: Rock")
  end
end
