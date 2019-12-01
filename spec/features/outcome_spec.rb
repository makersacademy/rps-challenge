feature "outcome" do
  scenario "displays outcome if draw" do
    sign_in
    choose_rock
    choose_rock
    expect(page).to have_content("draw")
  end

  scenario "display outcome if win" do
    sign_in
    choose_rock
    choose_scissors
    expect(page).to have_content("win")
  end

  scenario "display outcome if loss" do
    sign_in
    choose_rock
    choose_paper
    expect(page).to have_content("lose")
  end
end