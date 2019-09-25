

feature "Rock Paper Sissors feature test" do
  scenario "home page returned" do
    visit('/')
    expect(page).to have_content('Please enter your name')
  end

  scenario "name returned on match page" do
    sign_in_and_play
    expect(page).to have_content('Welcome James')
  end

  scenario "Player plays rock" do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('You played rock')
  end
end
