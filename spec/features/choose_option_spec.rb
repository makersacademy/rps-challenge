require "./app"

feature "Choose option" do
  scenario "choose an option" do
    sign_in_and_play
    click_button "Submit"
    expect(page).to have_content "Rock"
  end
end
