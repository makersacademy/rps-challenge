feature 'players can correctly see everything on play page' do

  before do
    sign_in_and_play('Dan', 'Opponent')
  end

  feature 'Player form' do
    scenario 'expects player to submit name and then see the contest' do
      expect(page).to have_content "Dan vs Opponent"
    end
  end

  feature 'Move options' do
    scenario 'expects Dan to see where they should enter move' do
      expect(page).to have_content "Dan move:"
    end

    scenario 'expects opponent to see where they should enter move' do
      expect(page).to have_content "Opponent move:"
    end

    scenario 'expects player to see list of options to choose from' do
      expect(page).to have_content "Choose either rock, paper or scissors!"
    end
  end

  scenario 'expect players to see HTML input fields for their moves' do
    expect(page).to have_selector("input[name='player_1_move']")
    expect(page).to have_selector("input[name='player_2_move']")
  end
end
