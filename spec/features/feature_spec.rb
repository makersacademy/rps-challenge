feature "index page" do
  scenario 'player visits the index page' do
    visit ('/')
    expect(page).to have_content "Would you like to play against a human or against our computer, #{Computer::COMPUTER_NAME}?"
  end
end

feature "one- or two-player selection" do
  scenario 'player selects one-player' do
    visit ('/')
    click_on "Computer"
    expect(page).to have_content "Please enter your name:"
  end
  scenario 'player selects two-player' do
    visit ('/')
    click_on "Human"
    expect(page).to have_content "Please enter your names:"
  end
end

feature "players' names shown throughout game" do
  scenario 'player selects one-player' do
    # one_player_p1_chooses_rock
    visit ('/')
    click_on "Computer"
    fill_in "p1_name", with: "Lady Macbeth"
    click_on "Enter"
    expect(page).to have_content "Lady Macbeth"
    click_on "Rock"
    #
    expect(page).to have_content "Lady Macbeth"
    expect(page).to have_content "#{Computer::COMPUTER_NAME}"
  end
  scenario 'player selects two-player' do
    #two_players_p1_chooses_spock
    visit ('/')
    click_on "Human"
    fill_in "p1_name", with: "Lady Macbeth"
    fill_in "p2_name", with: "Queen Gertrude"
    click_on "Enter"
    expect(page).to have_content "Lady Macbeth"
    click_on "Spock"
    #
    expect(page).to have_content "Queen Gertrude"
    click_on "Rock"
    expect(page).to have_content "Lady Macbeth"
    expect(page).to have_content "Queen Gertrude"
  end
end

feature '/play view' do
  scenario 'player chooses single-player and enter name' do
    visit ('/')
    click_on "Computer"
    fill_in "p1_name", with: "Lady Macbeth"
    click_on "Enter"
    expect(page).to have_content "Let's play Rock, Paper, Scissors ft. Spocks and Lizards!"
  end
end

feature 'presents results of the game' do
  let(:computer) { double(:computer, name: Computer::COMPUTER_NAME, choose: nil)}
  scenario "single-player mode, player chooses rock, computer chooses paper" do
    allow(Computer).to receive(:new) { computer }
    allow(computer).to receive(:weapon_choice) { Paper.new }
    #one_player_p1_chooses_rock
    visit ('/')
    click_on "Computer"
    fill_in "p1_name", with: "Lady Macbeth"
    click_on "Enter"
    click_on "Rock"
    #
    expect(page).to have_content "#{Computer::COMPUTER_NAME} wins!"
  end
  scenario "single-player mode, player chooses rock, computer chooses scissors" do
    allow(Computer).to receive(:new) { computer }
    allow(computer).to receive(:weapon_choice) { Scissors.new }
    #one_player_p1_chooses_rock
    visit ('/')
    click_on "Computer"
    fill_in "p1_name", with: "Lady Macbeth"
    click_on "Enter"
    click_on "Rock"
    #
    expect(page).to have_content "Lady Macbeth wins!"
  end
  scenario "single-player mode, player chooses rock, computer chooses rock" do
    allow(Computer).to receive(:new) { computer }
    allow(computer).to receive(:weapon_choice) { Rock.new }
    #one_player_p1_chooses_rock
    visit ('/')
    click_on "Computer"
    fill_in "p1_name", with: "Lady Macbeth"
    click_on "Enter"
    click_on "Rock"
    #
    expect(page).to have_content "It's a draw!"
  end
  scenario "two-player mode, player 1 chooses spock, player 2 chooses spock" do
    #two_players_p1_chooses_spock
    visit ('/')
    click_on "Human"
    fill_in "p1_name", with: "Lady Macbeth"
    fill_in "p2_name", with: "Queen Gertrude"
    click_on "Enter"
    click_on "Spock"
    #
    click_on "Spock"
    expect(page).to have_content "It's a draw!"
  end
  scenario "two-player mode, player 1 chooses spock, player 2 chooses lizard" do
    #two_players_p1_chooses_spock
    visit ('/')
    click_on "Human"
    fill_in "p1_name", with: "Lady Macbeth"
    fill_in "p2_name", with: "Queen Gertrude"
    click_on "Enter"
    click_on "Spock"
    #
    click_on "Lizard"
    expect(page).to have_content "Queen Gertrude wins!"
  end
  scenario "two-player mode, player 1 chooses spock, player 2 chooses scissors" do
    #two_players_p1_chooses_spock
    visit ('/')
    click_on "Human"
    fill_in "p1_name", with: "Lady Macbeth"
    fill_in "p2_name", with: "Queen Gertrude"
    click_on "Enter"
    click_on "Spock"
    #
    click_on "Scissors"
    expect(page).to have_content "Lady Macbeth wins!"
  end
end
