feature "player make a choice" do
  scenario "player chose rock" do
    sign_in
    click_rock
    expect(page).to have_content('result')
  end

  scenario "player chose paper" do
    sign_in
    click_paper
    expect(page).to have_content('result')
  end

  scenario "player chose scissor" do
    sign_in
    click_scissor
    expect(page).to have_content('result')
  end
end
