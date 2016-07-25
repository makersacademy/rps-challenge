feature "Play" do
  scenario "Displays Rules" do
    sign_in_and_play
    expect(page).to have_content("Rules:")
  end

  scenario "Shows attack button - Rock" do
    sign_in_and_play
    find_button("Rock").click
  end

  scenario "Shows attack button - Paper" do
    sign_in_and_play

  end

  scenario "Shows attack button - Scissors" do
    sign_in_and_play
    find_button("Scissors").click
  end
end
