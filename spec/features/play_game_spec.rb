feature "play game" do
  scenario "select rock" do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Your choice: Rock"
  end
end