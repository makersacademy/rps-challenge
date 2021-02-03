feature "Character selection page" do
  let(:player) { "Claude" }

  scenario "Greets player by name" do
    sign_in
    expect(page).to have_content "Claude - choose your warrior"
  end

  scenario "displays Rock option" do
    sign_in
    expect(page).to have_button("rock")
  end

  scenario "displays Paper option" do
    sign_in
    expect(page).to have_button("paper")
  end

  scenario "displays Scissors option" do
    sign_in
    expect(page).to have_button("scissors")
  end

  scenario "paper button selects paper" do
    sign_in
    click_on("paper")
    expect(page).to have_content("#{player} is Paper")

  end

  scenario "rock button selects rock" do
    sign_in
    click_on("rock")
    expect(page).to have_content("#{player} is Rock")
  end

  scenario "scissors button selects scissors" do
    sign_in
    click_on("scissors")
    expect(page).to have_content("#{player} is Scissors")
  end

end
