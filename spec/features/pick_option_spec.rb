feature "Pick your weapon" do
  scenario "user can pick one of three options" do
    sign_in_and_play
    expect(page).to have_content "Rock" && "Paper" && "Scissors"
  end
end
