feature "Choices Buttons" do
  scenario "player clicks on Paper button" do
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "You played Paper"
  end
end

feature "Computer's choice" do  
# this is a bad test - it passes because the view renders the correct word, but the click_button 
# generates a @game with different choices.
  scenario "the computer makes a choice" do
    allow_any_instance_of(Game).to receive(:computer_choice).and_return("Rock")
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "Computer played Rock"
  end
end