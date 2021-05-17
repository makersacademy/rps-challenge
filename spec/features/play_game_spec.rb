feature "play game" do
  scenario "select rock" do
    sign_in
    choose "Rock"
    click_button "Submit"
    expect(page).to have_content "Your choice: Rock"
  end
end
