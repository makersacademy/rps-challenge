require_relative '../../lib/player'

xfeature 'playing the game with two player' do
  let(:computer_name) { "RPSBot::9000" }
  let(:player1_name) { "Lester Flatt" }
  let(:player2_name) { "Earl Scruggs" }

  before do
    register_two_players(player1_name, player2_name)
  end

  context 'after registering, player 1 can make a choice' do
    scenario "player 1 can select 'rock'" do
      click_button 'Rock'
      expect(page).to have_content "#{player2_name} choose your weapon"
    end

    scenario "player 1 can select 'paper'" do
      click_button 'Paper'
      expect(page).to have_content "#{player2_name} choose your weapon"
    end

    scenario "player 1 can select 'scissors'" do
      click_button 'Scissors'
      expect(page).to have_content "#{player2_name} choose your weapon"
    end
  end

  context 'after player 1 makes a choice, player 2 can make a choice' do
    before do
      click_button('Rock')
    end
    
    scenario "player 2 can select 'rock'" do
      click_button 'Rock'
      expect(page).to have_content "#{player2_name} selected rock"
    end

    scenario "player 2 can select 'paper'" do
      click_button 'Paper'
      expect(page).to have_content "#{player2_name} selected paper"
    end

    scenario "player 2 can select 'scissors'" do
      click_button 'Scissors'
      expect(page).to have_content "#{player2_name} selected scissors"
    end
  end

  context "if the computer chooses 'rock'" do
    before do
      allow(Kernel).to receive(:rand).and_return(0)
    end
    context "and the user chooses 'rock'" do
      scenario "it's a draw" do
        click_button 'Rock'
        expect(page).to have_content "It's a draw"
      end
    end

    context "and the user chooses 'paper'" do
      scenario "the user wins" do
        click_button 'Paper'
        expect(page).to have_content "You win"
      end
    end

    context "and the user chooses 'scissors'" do
      scenario "the computer wins" do
        click_button 'Scissors'
        expect(page).to have_content "You lose"
      end
    end
  end

  context "if the computer chooses 'paper'" do
    before do
      allow(Kernel).to receive(:rand).and_return(1)
    end
    context "and the user chooses 'rock'" do
      scenario "the computer wins" do
        click_button 'Rock'
        expect(page).to have_content "You lose"
      end
    end

    context "and the user chooses 'paper'" do
      scenario "it's a draw" do
        click_button 'Paper'
        expect(page).to have_content "It's a draw"
      end
    end

    context "and the user chooses 'scissors'" do
      scenario "the user wins" do
        click_button 'Scissors'
        expect(page).to have_content "You win"
      end
    end
  end

  context "if the computer chooses 'scissors'" do
    before do
      allow(Kernel).to receive(:rand).and_return(2)
    end
    context "and the user chooses 'rock'" do
      scenario "the user wins" do
        click_button 'Rock'
        expect(page).to have_content "You win"
      end
    end

    context "and the user chooses 'paper'" do
      scenario "the computer wins" do
        click_button 'Paper'
        expect(page).to have_content "You lose"
      end
    end

    context "and the user chooses 'scissors'" do
      scenario "it's a draw" do
        click_button 'Scissors'
        expect(page).to have_content "It's a draw"
      end
    end
  end
end
