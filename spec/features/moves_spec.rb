feature 'Game moves' do
  before(:each) { sign_in_and_play }
  describe '#play' do
    it 'does not crash if nothing is entered' do
      click_button('Go!')
      expect(page).to have_content('0 - 0')
    end
  end
  describe 'Rock' do
    before(:each) do 
      choose('Rock') 
      click_button('Go!')
    end
    it { expect(page).to have_content('Rock') }
    it { expect(page).to have_content('Jack used Rock') }
    it 'Beats Paper' do
      # expect(page).to have_content('1 - 0')
    end
    it 'looses to Paper' do
      # expect(page).to have_content('0 - 1')
    end
    it 'draws to rock' do
      # expect(page).to have_content('0 - 0')
    end
  end
  describe 'Paper' do
    before(:each) do
      choose('Paper') 
      click_button('Go!')
    end
    it { expect(page).to have_content('Paper') }
    it { expect(page).to have_content('Jack used Paper') }
  end
  describe 'Scissors' do
    before(:each) do
      choose('Scissors') 
      click_button('Go!')
    end
    it { expect(page).to have_content('Scissors') }
    it { expect(page).to have_content('Jack used Scissors') }
  end
end
