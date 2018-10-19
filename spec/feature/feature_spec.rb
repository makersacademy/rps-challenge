feature "The user sees their own name" do
  scenario "Prompted to enter their name, the user is greeted" do
    visit('/')
    expect(page).to have_content "Who are you?"
  end

  scenario "After submitting their name, the user is greeted" do
    visit('/')
    fill_in :user_name, with: "Lucas"
    click_button("Submit")
    expect(page).to have_content "Hi, Lucas!"
  end
end

feature "The game begins" do
  scenario "The user selects rock and wins" do
    visit('/')
    fill_in :user_name, with: "Lucas"
    click_button("Submit")
    choose('rock')
    click_button("Submit")
    expect(page).to have_content "Rock beats Scissors, you win!"
  end
end
