require_relative '../../lib/player'

feature 'playing the game with one player' do
  let(:computer_name) { "RPSBot::9000" }
  let(:player1_name) { "Lester Flatt" }
  let(:player2_name) { "Earl Scruggs" }

  before do
    register_one_player(player1_name)
  end

  context 'after registering' do
    scenario "user can select 'rock'" do
      click_button 'Rock'
      expect(page).to have_content "#{player1_name} selected rock"
    end

    scenario "user can select 'paper'" do
      click_button 'Paper'
      expect(page).to have_content "#{player1_name} selected paper"
    end

    scenario "user can select 'scissors'" do
      click_button 'Scissors'
      expect(page).to have_content "#{player1_name} selected scissors"
    end
  end

  context 'after the user makes a choice' do
    scenario "the computer might choose 'rock'" do
      allow(Kernel).to receive(:rand).and_return(0)
      click_button 'Rock'
      expect(page).to have_content "#{computer_name} selected rock"
    end

    scenario "the computer might choose 'paper'" do
      allow(Kernel).to receive(:rand).and_return(1)
      click_button 'Rock'
      expect(page).to have_content "#{computer_name} selected paper"
    end

    scenario "the computer might choose 'scissors'" do
      allow(Kernel).to receive(:rand).and_return(2)
      click_button 'Rock'
      expect(page).to have_content "#{computer_name} selected scissors"
    end
  end

  xcontext "if the computer chooses 'rock'" do
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
        expect(page).to have_content "#{player1_name} wins"
      end
    end

    context "and the user chooses 'scissors'" do
      scenario "the computer wins" do
        click_button 'Scissors'
        expect(page).to have_content "#{player2_name} wins"
      end
    end
  end

  xcontext "if the computer chooses 'paper'" do
    before do
      allow(Kernel).to receive(:rand).and_return(1)
    end
    context "and the user chooses 'rock'" do
      scenario "the computer wins" do
        click_button 'Rock'
        expect(page).to have_content "#{player2_name} wins"
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
        expect(page).to have_content "#{player1_name} wins"
      end
    end
  end

  xcontext "if the computer chooses 'scissors'" do
    before do
      allow(Kernel).to receive(:rand).and_return(2)
    end
    context "and the user chooses 'rock'" do
      scenario "the user wins" do
        click_button 'Rock'
        expect(page).to have_content "#{player1_name} wins"
      end
    end

    context "and the user chooses 'paper'" do
      scenario "the computer wins" do
        click_button 'Paper'
        expect(page).to have_content "#{player2_name} wins"
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
