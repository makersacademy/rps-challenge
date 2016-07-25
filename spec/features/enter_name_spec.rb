feature "Enter name" do
  scenario "Submitting name, starts game" do
    sign_in_and_play
    expect(page).to have_text("Albie vs. Computer")
  end
end
