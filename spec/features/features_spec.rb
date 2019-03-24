require_relative '../../lib/player'

feature 'signing in' do
  scenario 'it asks how many players you want to play with' do
    visit '/'
    expect(page).to have_button(value: 'one_player')
    expect(page).to have_button(value: 'two_player')
  end

  context 'user selects two player game' do
    scenario 'system asks for two names' do
      visit '/'
      click_button value: 'two_player'
      fill_in "player1_name", with: "Flatt"
      fill_in "player2_name", with: "Scruggs"
      click_button "Let's do this"
      expect(page).to have_content("Flatt vs. Scruggs")
    end
    scenario 'second player gets a go' do
      visit '/'
      click_button value: 'two_player'
      fill_in "player1_name", with: "Flatt"
      fill_in "player2_name", with: "Scruggs"
      click_button "Let's do this"
      click_button 'Rock'
      expect(page).to have_content("Scruggs, choose your weapon")
    end
  end

  context 'user selects one player game' do
    scenario 'system asks for one name' do
      visit '/'
      click_button(value: 'one_player')
      fill_in "player1_name", with: "Dave Bowman"
      click_button("Let's do this")
      expect(page).to have_content("Dave Bowman vs. RPSBot::9000")
    end
    scenario 'computer takes go for second player' do
      visit '/'
      click_button(value: 'one_player')
      fill_in "player1_name", with: "Dave Bowman"
      click_button("Let's do this")
      click_button 'Rock'
      expect(page).to have_content "The results are in"
    end
  end
end

xfeature 'playing the game' do
  before do
    register_one_player('Sandra')
  end

  context 'after registering' do
    scenario "user can select 'rock'" do
      click_button 'Rock'
      expect(page).to have_content 'You selected rock'
    end

    scenario "user can select 'paper'" do
      click_button 'Paper'
      expect(page).to have_content 'You selected paper'
    end

    scenario "user can select 'scissors'" do
      click_button 'Scissors'
      expect(page).to have_content 'You selected scissors'
    end
  end

  context 'after the user makes a choice' do
    scenario "the computer might choose 'rock'" do
      allow(Kernel).to receive(:rand).and_return(0)
      click_button 'Rock'
      expect(page).to have_content 'The computer selected rock'
    end

    scenario "the computer might choose 'paper'" do
      allow(Kernel).to receive(:rand).and_return(1)
      click_button 'Rock'
      expect(page).to have_content 'The computer selected paper'
    end

    scenario "the computer might choose 'scissors'" do
      allow(Kernel).to receive(:rand).and_return(2)
      click_button 'Rock'
      expect(page).to have_content 'The computer selected scissors'
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

xfeature "restarting the game" do
  context "after completing a round" do
    scenario "the user can choose to play another round" do
      register_player1('Dougal')
      click_button 'Rock'
      expect(page).to have_link('Play again?', :href => '/play')
    end
  end
end
