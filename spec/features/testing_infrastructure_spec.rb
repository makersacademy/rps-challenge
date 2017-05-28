feature "Testing user enter names" do
  scenario "Allows users to submit name and see them in lights" do
    sign_in_and_play
    expect(page).to have_content "Rock + Paper + Scissors"
  end
end
