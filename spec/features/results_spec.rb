feature "Show results" do
  scenario "player clicks rock" do
    sign_in_and_play
    find_button('Rock').click
    expect(page).to have_text("You chose rock")
  end
end

feature "Show results" do
  scenario "player clicks rock" do
    sign_in_and_play
    find_button('Paper').click
    expect(page).to have_text("You chose paper")
  end
end

feature "Show results" do
  scenario "player clicks rock" do
    sign_in_and_play
    find_button('Scissors').click
    expect(page).to have_text("You chose scissors")
  end
end
