feature "testing home page is working" do
  scenario "displays welcome text" do
    visit "/"
    expect(page).to have_content "Rock, Paper, Scissors"
  end
  scenario "allows user to start a game" do
    visit "/"
    expect(page).to have_button("Let's go!")
  end
end

feature "test Game page is working" do
  scenario "greets user by name if provided" do
    sign_in_and_play
    expect(page).to have_content "It's Ian against the computer"
  end
  scenario "allows there to be no name provided" do
    visit "/"
    click_on("Let's go")
    expect(page).to have_content "It's you against the computer"
  end
  scenario "displays 'rock' link" do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end
  scenario "displays 'paper' link" do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end
  scenario "displays 'scissors' link" do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end
end

feature "playing the game" do
  scenario "player chooses Rock" do
    sign_in_and_play
    click_on("Rock")
    expect(page).to have_content "You chose Rock"
  end
  scenario "player chooses Paper" do
    sign_in_and_play
    click_on("Paper")
    expect(page).to have_content "You chose Paper"
  end
  scenario "player chooses Scissors" do
    sign_in_and_play
    click_on("Scissors")
    expect(page).to have_content "You chose Scissors"
  end
end

feature "upon seeing the result" do
  scenario "allows player to play again" do
    sign_in_and_play
    click_on("Scissors")
    expect(page).to have_button('Play again!')
  end
end
