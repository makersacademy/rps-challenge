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
