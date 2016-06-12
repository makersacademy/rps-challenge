feature "FEATURE: enter player name" do
  scenario "submitting player name" do
    sign_in_and_play
    expect(page).to have_content "Alistair vs. Ava"
  end
end
