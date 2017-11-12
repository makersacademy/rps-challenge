feature "index page allows you to regsiter name" do
  scenario "prompts entering of name" do
    visit "/"
    expect(page).to have_content "Name:"
  end
  scenario "allows you to submit a form" do
    visit "/"
    expect(page).to have_button("Submit")
  end
end

feature "play page allows player to make a choice" do
  before { sign_in_and_play }
  scenario "allows user to select rock" do
    expect(page).to have_content "Rock"
  end
  scenario "allows user to select paper" do
    expect(page).to have_content "Paper"
  end
  scenario "allows user to select scissors" do
    expect(page).to have_content "Scissors"
  end
  scenario "allows user to submit the choice" do
    expect(page).to have_button("Submit")
  end
end

feature "submiting a choice sends us to a results page" do
  before { sign_in_and_play }
  scenario "any selection takes us to results page" do
    choose("choice_rock")
    click_button("Submit")
    expect(page).to have_content("Thanks for playing a round of Rock-Paper-Scissors!")
  end
  scenario "choice rock shows rock on the results page" do
    choose("choice_rock")
    click_button("Submit")
    expect(page).to have_content("rock")
  end
end
