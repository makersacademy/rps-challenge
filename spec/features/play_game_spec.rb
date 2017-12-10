feature "play game" do
  background do
    sign_in
  end

  scenario "view players' names" do
    click_button("Ready to play!")
    expect(page).to have_content "Xin vs. Computer"
  end

  scenario "player is told to choose a weapon" do
    click_button("Ready to play!")
    expect(page).to have_content "Choose your weapon"
  end

  scenario 'player is given a choice of Rock' do
    click_button("Ready to play!")
    find_button("rock").click
  end

  scenario 'player is given a choice of Paper' do
    click_button("Ready to play!")
    find_button("scissors").click
  end

  scenario 'player is given a choice of Scissors' do
    click_button("Ready to play!")
    find_button("paper").click
  end

end
