feature "Display user's name" do
  scenario "user is shown greeting message" do
    visit ('/')
    expect(page).to have_content "Welcome to the RockPaperScissors app. Please register your name."
  end

  scenario "User sees their name displayed after entering it" do
    visit ('/')
    fill_in 'user_name', with: 'Dave'
    click_button 'Register'

    expect(page).to have_content "Dave"
  end
end
