feature "check cards" do
  scenario "there is a 'rock' card" do
    signin
    expect(page).to have_content "Javi please choose your card"
  end
end
