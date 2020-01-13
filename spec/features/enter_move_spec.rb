feature "entering move" do
  scenario "check user input == move" do
    sign_in_and_play
    choose :move, with: :Paper
    click_button "Submit!"
    expect(page).to have_content "picked Paper"
  end
end
