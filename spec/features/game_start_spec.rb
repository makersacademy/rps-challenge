feature "The Game", :type => :feature do
  scenario "allows user to input name" do
    sign_in
    expect(page).to have_text("Rock, Paper, Scissors")
  end

  scenario "allows user to pick rock" do
    sign_in
    click_button"Rock"
    expect(page).to have_text("You picked rock")
  end

  scenario "allows user to pick paper" do
    sign_in
    click_button"Paper"
    expect(page).to have_text("You picked paper")
  end

  scenario "allows user to pick scissors" do
    sign_in
    click_button"Scissors"
    expect(page).to have_text("You picked scissors")
  end
end
