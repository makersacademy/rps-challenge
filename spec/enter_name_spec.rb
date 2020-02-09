feature "Enter name" do
  scenario "the player enter's their name" do
    sign_in_and_play
    expect(page).to have_content "What's your move?"
  end
end 