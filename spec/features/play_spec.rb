feature "Playing a game" do

  before do
    sign_in_and_play
  end

  scenario "I can view the options of Rock, Paper and Scissors" do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "choosing a move" do
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end

  scenario "opponent's move 'Rock'" do
    click_button "Rock"
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

end
