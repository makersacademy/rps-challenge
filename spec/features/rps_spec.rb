require './app'

feature 'Configure Player 1' do
  scenario 'Enter and verify name for player 1' do
    sign_in_and_play
    expect(page).to have_content('Jon')
  end
end

feature 'Choose Rock, Paper or Scissors' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    make_player_choice('rock')
    expect(page).to have_css('div#player-choice.choice.rock')
  end

  scenario 'Player chooses Paper' do
    sign_in_and_play
    make_player_choice('paper')
    expect(page).to have_css('div#player-choice.choice.paper')
  end

  scenario 'Player chooses Scissors' do
    sign_in_and_play
    make_player_choice('scissors')
    expect(page).to have_css('div#player-choice.choice.scissors')
  end
end

feature 'Decide who won the round' do
  context 'Rock vs. Scissors' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:scissors)
      make_player_choice(:rock)
    end

    scenario 'Player wins' do
      expect(page).to have_content('You win!')
    end

    scenario 'Player chose rock' do
      expect(page).to have_css('div#player-choice.choice.rock')
    end

    scenario 'Computer chose scissors' do
      expect(page).to have_css('div#computer-choice.choice.scissors')
    end
  end

  context 'Rock vs. Rock' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:rock)
      make_player_choice(:rock)
    end

    scenario "It's a draw" do
      expect(page).to have_content("It's a draw!")
    end

    scenario 'Player chose rock' do
      expect(page).to have_css('div#player-choice.choice.rock')
    end

    scenario 'Computer chose rock' do
      expect(page).to have_css('div#computer-choice.choice.rock')
    end
  end

  context 'Rock vs. Paper' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:paper)
      make_player_choice(:rock)
    end

    scenario "Player loses" do
      expect(page).to have_content("You lose!")
    end

    scenario 'Player chose rock' do
      expect(page).to have_css('div#player-choice.choice.rock')
    end

    scenario 'Computer chose paper' do
      expect(page).to have_css('div#computer-choice.choice.paper')
    end
  end

  context 'Paper vs. Rock' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:rock)
      make_player_choice(:paper)
    end

    scenario 'Player wins' do
      expect(page).to have_content('You win!')
    end

    scenario 'Player chose paper' do
      expect(page).to have_css('div#player-choice.choice.paper')
    end

    scenario 'Computer chose rock' do
      expect(page).to have_css('div#computer-choice.choice.rock')
    end
  end

  context 'Paper vs. Paper' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:paper)
      make_player_choice(:paper)
    end

    scenario "It's a draw" do
      expect(page).to have_content("It's a draw!")
    end

    scenario 'Player chose paper' do
      expect(page).to have_css('div#player-choice.choice.paper')
    end

    scenario 'Computer chose paper' do
      expect(page).to have_css('div#computer-choice.choice.paper')
    end
  end

  context 'Paper vs. Scissors' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:scissors)
      make_player_choice(:paper)
    end

    scenario "Player loses" do
      expect(page).to have_content("You lose!")
    end

    scenario 'Player chose paper' do
      expect(page).to have_css('div#player-choice.choice.paper')
    end

    scenario 'Computer chose scissors' do
      expect(page).to have_css('div#computer-choice.choice.scissors')
    end
  end

  context 'Scissors vs. Paper' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:paper)
      make_player_choice(:scissors)
    end

    scenario 'Player wins' do
      expect(page).to have_content('You win!')
    end

    scenario 'Player chose scissors' do
      expect(page).to have_css('div#player-choice.choice.scissors')
    end

    scenario 'Computer chose paper' do
      expect(page).to have_css('div#computer-choice.choice.paper')
    end
  end

  context 'Scissors vs. Scissors' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:scissors)
      make_player_choice(:scissors)
    end

    scenario "It's a draw" do
      expect(page).to have_content("It's a draw!")
    end

    scenario 'Player chose scissors' do
      expect(page).to have_css('div#player-choice.choice.scissors')
    end

    scenario 'Computer chose scissors' do
      expect(page).to have_css('div#computer-choice.choice.scissors')
    end
  end

  context 'Scissors vs. Rock' do
    before(:each) do
      sign_in_and_play
      make_computer_choice(:rock)
      make_player_choice(:scissors)
    end

    scenario "Player loses" do
      expect(page).to have_content("You lose!")
    end

    scenario 'Player chose scissors' do
      expect(page).to have_css('div#player-choice.choice.scissors')
    end

    scenario 'Computer chose rock' do
      expect(page).to have_css('div#computer-choice.choice.rock')
    end
  end
end
