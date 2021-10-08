feature "Choices Buttons" do
  scenario "click on Paper button" do
    enter_name_and_ok
    click_button "Paper"
    expect(page).to have_content "You played Paper"
  end
end