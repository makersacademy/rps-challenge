# Check has three buttons for Rock, Paper, Scissors
# Check clicking them takes us to a result page?

feature 'Play page' do
  before { sign_in_and_play }

  scenario 'tells the player to select a button' do
    expect(page).to have_content("Please select an option")
  end

  feature 'selecting rock button' do
    before { click_button('Rock') }
    scenario 'the user sees their choice' do
      expect(page).to have_content "#{player_1_name} chose Rock"
    end
    scenario 'the user sees the computer choice' do
      expect(page).to have_content "#{player_2_name} chose "
    end
  end

  feature 'selecting paper button' do
    before { click_button('Paper') }
    scenario 'the user sees their choice' do
      expect(page).to have_content "#{player_1_name} chose Paper"
    end
    scenario 'the user sees the computer choice' do
      expect(page).to have_content "#{player_2_name} chose "
    end
  end

  feature 'selecting scissors button' do
    before { click_button('Scissors') }
    scenario 'the user sees their choice' do
      expect(page).to have_content "#{player_1_name} chose Scissors"
    end
    scenario 'the user sees the computer choice' do
      expect(page).to have_content "#{player_2_name} chose "
    end
  end

end
