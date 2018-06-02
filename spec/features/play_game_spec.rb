# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'User can play an entire game' do
  scenario 'user chooses Rock, comp chooses Paper' do
    # Setup
    log_in_and_play
    # Exercise
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Paper")
    click_button('Rock')
    # Verification
    expect(page.find('div#page-header').text).to have_content("Results are in: Computer wins!")
  end

  scenario 'user chooses Rock, comp chooses Scissors' do
    # Setup
    log_in_and_play
    # Exercise
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Scissors")
    click_button('Rock')
    # Verification
    expect(page.find('div#page-header').text).to have_content("Results are in: Player wins!")
  end

  scenario 'user chooses Paper, comp chooses paper' do
    # Setup
    log_in_and_play
    # Exercise
    allow_any_instance_of(Randomizer).to receive(:result).and_return("Paper")
    click_button('Paper')
    # Verification
    expect(page.find('div#page-header').text).to have_content("Results are in: Draw!")
  end

  feature 'user can see what computer chose' do
    scenario 'computer chooses rock' do
      log_in_and_play
      allow_any_instance_of(Randomizer).to receive(:result).and_return("Paper")
      click_button('Rock')
      expect(page.find('div#results').text).to have_content("Computer chose Paper")
    end

    feature 'user can see picture of what computer chose' do
      # scenario 'computer chooses rock' do
      #   log_in_and_play
      #   allow_any_instance_of(Randomizer).to receive(:result).and_return("Rock")
      #   click_button('Paper')
      #   expect(page.find('div#comp_pic')).to have_css("img[src*='rock.jpg']")
      # end
    end

  end

  feature 'user can see what they chose on final results page' do
    scenario 'user picks rock' do
      log_in_and_play
      click_button('Rock')
      expect(page.find('div#results').text).to have_content("You chose Rock")
    end

    feature 'user sees pic of what they chose' do
      scenario 'user picks paper' do
        log_in_and_play
        click_button("Paper")
        expect(page.find('div#user_pic')).to have_css("img[src*='paper.jpg']")
      end

      scenario 'user picks rock' do
        log_in_and_play
        click_button("Rock")
        expect(page.find('div#user_pic')).to have_css("img[src*='rock.jpg']")
      end
    end
  end

  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
