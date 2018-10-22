feature "Single-Player" do
  scenario 'greets user' do
    visit('/')
    expect(page).to have_content("Enter your name to play solo")
  end
  scenario 'submits name' do
    start_game_sp
    expect(page).to have_content("Welcome Ray!")
  end
  scenario 'it allows user to choose Rock' do
    start_game_sp
    click_button "Rock"
    expect(page).to have_content("You played Rock.")
  end
  scenario 'it allows user to choose Paper' do
    start_game_sp
    click_button "Paper"
    expect(page).to have_content("You played Paper.")
  end
  scenario 'it allows user to choose Scissors' do
    start_game_sp
    click_button "Scissors"
    expect(page).to have_content("You played Scissors.")
  end
  scenario 'it outputs the computers move & winner' do
    start_game_sp
    click_button "Rock"
    expect(page).to have_content("You played Rock. The Computer played")
    expect(page).to have_content("is the winner")
  end
end

feature "Two-Player" do
  scenario 'greets user' do
    visit('/')
    expect(page).to have_content("Enter your names to battle each other!")
  end
  scenario 'submits name' do
    start_game_tp
    expect(page).to have_content("Welcome Ray and Bob")
  end
  scenario 'it allows player 1 to choose Rock' do
    start_game_tp
    click_button "Rock"
    expect(page).to have_content("It's your turn Bob!")
  end
  scenario 'it allows player 1 to choose Paper' do
    start_game_tp
    click_button "Paper"
    expect(page).to have_content("It's your turn Bob!")
  end
  scenario 'it allows player 1 to choose Scissors' do
    start_game_tp
    click_button "Scissors"
    expect(page).to have_content("It's your turn Bob!")
  end
  scenario 'it allows player 2 to choose Rock' do
    start_game_tp
    click_button "Rock"
    click_button "Rock"
    expect(page).to have_content("Ray played Rock. Bob played Rock.")
    expect(page).to have_content("No one is the winner")
  end
  scenario 'it allows player 2 to choose Paper' do
    start_game_tp
    click_button "Scissors"
    click_button "Paper"
    expect(page).to have_content("Ray played Scissors. Bob played Paper.")
    expect(page).to have_content("Ray is the winner")
  end
  scenario 'it allows player 2 to choose Scissors' do
    start_game_tp
    click_button "Paper"
    click_button "Scissors"
    expect(page).to have_content("Ray played Paper. Bob played Scissors.")
    expect(page).to have_content("Bob is the winner")
  end
end
