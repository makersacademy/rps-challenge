feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit("/")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors"
  end
end

feature "Players can add enter their names" do
  scenario "submit names" do
    sign_in_and_submit
    expect(page).to have_content "let's play"
  end
end

feature "playing RPS" do
  scenario "pick rock" do
    sign_in_and_submit
    click_button "Rock"
    expect(page).to have_content "picked Rock"
  end
end

feature "a game can be played" do
  scenario "player picks and computer picks to play a game" do
    sign_in_and_submit
    click_button "Rock"
    expect(page).to have_content "The result is: "
  end
end
