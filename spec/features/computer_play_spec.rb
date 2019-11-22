feature 'Game against the computer' do

  scenario "Should display the players move when player plays rock" do
    sign_in_and_play_one_player
    click_button "ROCK"
    expect(page).to have_content("You played: rock")
  end

  scenario "Should display the players move when player plays paper" do
    sign_in_and_play_one_player
    click_button "PAPER"
    expect(page).to have_content("You played: paper")
  end

  scenario "Should display the players move when player plays scissors" do
    sign_in_and_play_one_player
    click_button "SCISSORS"
    expect(page).to have_content("You played: scissors")
  end


  context "Computer chooses rock" do

    scenario "player chooses rock - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(1)
      sign_in_and_play_one_player
      click_button "ROCK"
      expect(page).to have_content("Computer's move: rock")
    end

    scenario "player chooses paper - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(1)
      sign_in_and_play_one_player
      click_button "PAPER"
      expect(page).to have_content("Computer's move: rock")
    end

    scenario "player chooses scissors - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(1)
      sign_in_and_play_one_player
      click_button "SCISSORS"
      expect(page).to have_content("Computer's move: rock")
    end

  end

  context "Computer chooses paper" do

    scenario "player chooses rock - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_play_one_player
      click_button "ROCK"
      expect(page).to have_content("Computer's move: paper")
    end

    scenario "player chooses paper - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_play_one_player
      click_button "PAPER"
      expect(page).to have_content("Computer's move: paper")
    end

    scenario "player chooses scissors - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_play_one_player
      click_button "SCISSORS"
      expect(page).to have_content("Computer's move: paper")
    end

  end

  context "Computer chooses scissors" do

    scenario "player chooses rock - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(3)
      sign_in_and_play_one_player
      click_button "ROCK"
      expect(page).to have_content("Computer's move: scissors")
    end

    scenario "player chooses paper - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(3)
      sign_in_and_play_one_player
      click_button "PAPER"
      expect(page).to have_content("Computer's move: scissors")
    end

    scenario "player chooses scissors - displays computer choice" do
      allow(Kernel).to receive(:rand).and_return(3)
      sign_in_and_play_one_player
      click_button "SCISSORS"
      expect(page).to have_content("Computer's move: scissors")
    end

  end

end
