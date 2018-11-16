feature RockPaperScissors do
  scenario "the user is asked to provide their name" do
    visit '/'
    expect(page).to have_content "Please enter your name to begin"
  end

  scenario "there are input fields for the user to enter their name" do
    visit '/'
    expect(page).to have_css 'input[type=text]'
    expect(page).to have_css 'input[type=submit]'
  end
end
