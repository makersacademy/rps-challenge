feature "Rock Paper Scissors" do
  scenario "Presents instructions" do
    sign_in_and_play
    expect(page).to have_content("Choose your attack from the following:")
  end
end
