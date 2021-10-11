feature "Choices Buttons" do
  scenario "player clicks on Paper button" do
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "You played Paper"
  end
end

feature "Computer's choice" do  
  scenario "the computer makes a choice" do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "Computer played Rock"
  end
end
