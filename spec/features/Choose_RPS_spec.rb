feature "Choose RPS" do
  scenario "choose either rock, paper or scissors" do
    sign_in_and_play
    select "Rock", from: "choice"
    click_button "Submit"
    expect(page).to have_content("Hello World")
  end
end