require "./app.rb"

feature "Compare choices" do
  scenario "when user submits winning choice" do
    allow(Computer.instance).to receive(:choice).and_return("Scissors")
    sign_in_and_play
    click_button "Submit"
    expect(page).to have_content "You won!"
  end

  scenario "when user submits drawing choice" do
    allow(Computer.instance).to receive(:choice).and_return("Rock")
    sign_in_and_play
    click_button "Submit"
    expect(page).to have_content "You drew!"
  end

  scenario "when user submits losing choice" do
    allow(Computer.instance).to receive(:choice).and_return("Paper")
    sign_in_and_play
    click_button "Submit"
    expect(page).to have_content "You lost!"
  end

end
