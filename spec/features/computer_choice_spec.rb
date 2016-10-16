require "./app"

feature "Computer choice" do
  scenario "when player clicks submit" do
    allow(Computer.instance).to receive(:choice).and_return("Paper")
    sign_in_and_play
    click_button "Submit"
    expect(page).to have_content "The computer chose: Paper"
  end
end
