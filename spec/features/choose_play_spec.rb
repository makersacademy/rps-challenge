feature "Choose one of the three option" do
  scenario "Choose rock" do
    sign_in_and_play
    click_button "Rock"
    expect(page).not_to have_content "Paper vs"
    expect(page).not_to have_content "Scissors vs"
    expect(page).to have_content "Rock vs"
  end
  scenario "Choose paper" do
    sign_in_and_play
    click_button "Paper"
    expect(page).not_to have_content "Rock vs"
    expect(page).not_to have_content "Scissors vs"
    expect(page).to have_content "Paper vs"
  end
  scenario "Choose scissors" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).not_to have_content "Paper vs"
    expect(page).not_to have_content "Rock vs"
    expect(page).to have_content "Scissors vs"
  end
end
