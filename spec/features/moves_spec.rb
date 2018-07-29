feature 'Game moves' do
  before(:each) { sign_in_and_play }
  describe 'Rock' do
    it { expect(page).to have_content('Paper') }
    before(:each) { choose('Rock') }
    it 'Beats Paper' do
      click_button('Go!')
      expect(page).to have_content('1 - 0')
    end
    it 'looses to Paper' do
      click_button('Go!')
      expect(page).to have_content('0 - 1')
    end
    it 'draws to rock' do
      click_button('Go!')
      expect(page).to have_content('0 - 0')
    end
  end
  describe 'Paper' do
    it { expect(page).to have_content('Paper') }
    before(:each) { choose('Paper') }
  end
  describe 'Scissors' do
    it { expect(page).to have_content('Scissors') }
    before(:each) { choose('Scissors') }

  end
end
