feature 'Game moves' do
  before(:each) { multiplayer_sign_in } # using multi player as not random
  describe '#play' do
    it 'does not crash if nothing is entered' do
      click_button('Go!')
      expect(page).to have_content('0 - 0')
    end
  end
  describe 'Rock' do
    before(:each) { within('div#p1_choice') { choose 'Rock' } }
    it 'Beats Scissors' do
      within('div#p2_choice') { choose 'Scissors' }
      click_button('Go!')
      expect(page).to have_content('1 - 0')
      expect(page).to have_content('Jack used Rock') # only needs testing once
    end
    it 'looses to Paper' do
      within('div#p2_choice') { choose 'Paper' }
      click_button('Go!')
      expect(page).to have_content('0 - 1')
    end
    it 'draws to rock' do
      within('div#p2_choice') { choose 'Rock' }
      click_button('Go!')
      expect(page).to have_content('0 - 0')
    end
  end
  describe 'Paper' do
    before(:each) do
      within('div#p1_choice') { choose 'Paper' } 
      within('div#p2_choice') { choose 'Paper' } 
      click_button('Go!')
    end
    it { expect(page).to have_content('Paper') }
    it { expect(page).to have_content('Jack used Paper') }
    it { expect(page).to have_content('0 - 0') }
  end
  describe 'Scissors' do
    before(:each) do
      within('div#p1_choice') { choose 'Scissors' } 
      within('div#p2_choice') { choose 'Paper' } 
      click_button('Go!')
    end
    it { expect(page).to have_content('Scissors') }
    it { expect(page).to have_content('Jack used Scissors') }
    it { expect(page).to have_content('1 - 0') }
  end
  context 'Additional moves display in sp' do
    before(:each) { sign_in_and_play }
    scenario 'Lizard combos' do
      expect(page).to have_content('Spock')
    end
    scenario 'Spock combos' do
      expect(page).to have_content('Spock')
    end
  end
  context 'Multi Player Additional moves testing - Lizard' do
    before(:each) { within('div#p1_choice') { choose 'Lizard' } }
    scenario 'Lizard draws to Lizard' do
      within('div#p2_choice') { choose 'Lizard' } 
      click_button('Go!')
      expect(page).to have_content('0 - 0')
    end
    scenario 'Lizard winning example' do
      within('div#p2_choice') { choose 'Paper' } 
      click_button('Go!')
      expect(page).to have_content('1 - 0')
    end
    scenario 'Lizard losing example' do
      within('div#p2_choice') { choose 'Rock' } 
      click_button('Go!')
      expect(page).to have_content('0 - 1')
    end
  end
  context 'Multi Player Additional moves testing - Spock' do
    before(:each) { within('div#p1_choice') { choose 'Spock' } }
    scenario 'Spock draws to Spock' do
      within('div#p2_choice') { choose 'Spock' } 
      click_button('Go!')
      expect(page).to have_content('0 - 0')
    end
    scenario 'Spock winning example' do
      within('div#p2_choice') { choose 'Scissors' } 
      click_button('Go!')
      expect(page).to have_content('1 - 0')
    end
    scenario 'Spock losing example' do
      within('div#p2_choice') { choose 'Paper' } 
      click_button('Go!')
      expect(page).to have_content('0 - 1')
    end
  end
end
