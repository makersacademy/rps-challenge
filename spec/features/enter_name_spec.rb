feature "Enter name" do
  scenario "Ask player to enter their name" do
    sign_in_and_play
  end

  scenario "Show player's name" do
    sign_in_and_play
    visit('/name')
    expect(page).to have_content(:name)
  end
end
