require 'game'

  feature 'You can enter your name to start game' do
    scenario 'enter your name' do
      visit('/')
      expect(page).to have_field("name")
    end
  end

  feature 'You can submit your name to start game' do
    scenario 'submit your name' do
      visit('/')
      expect(page).to have_button("submit")
    end
  end

  feature 'Submitting your name takes you to a play page' do
    scenario 'homepage returns content' do
      fill_in_name_and_submit
      expect(page).to have_content "Max Vs Computer"
    end
  end

  feature 'player can select an option from Rock, Paper and Scissors' do
    scenario 'player sees drop-down list with options' do
      fill_in_name_and_submit
      expect(page).to have_field('move', with: 'Rock')
      select "Paper", from: "move"
      expect(page).to have_field('move', with: 'Paper')
      select "Scissors", from: "move"
      expect(page).to have_field('move', with: 'Scissors')
    end
  end

  feature 'player can submit an option' do
    scenario 'player see submits option' do
      fill_in_name_and_submit
      expect(page).to have_button "submit"
    end
  end

  feature 'player selecting RPS option takes us to new page' do
    scenario 'player picks paper and is taken to new page' do
      fill_in_name_and_submit
      select "Paper", from: "move"
      click_button "submit"
      expect(page).to have_content "Max chose Paper"
    end
  end

  feature "computer's move shows on game page" do
    let(:game) { Game.new("Max") }
      scenario "when player selects a move, it shows the computer move as well" do
      fill_in_name_and_submit
      select "Paper", from: "move"
      click_button "submit"
      allow(game).to receive(:computer_move).and_return("Rock")
      expect(page).to have_content "Computer chose Rock"
    end
  end

  # above not sutbbing correctly
