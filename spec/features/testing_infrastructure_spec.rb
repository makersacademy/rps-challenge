feature "check homepage text" do
  scenario "asks to enter your name" do
    visit('/')
    expect(page).to have_content("Please enter your name")
  end
end

feature "check homepage text" do
  scenario "takes you to game page" do
    visit('/')
    fill_in('player_name', with: 'John')
    click_button('submit')
    expect(page).to have_content("Hello")
  end
end
