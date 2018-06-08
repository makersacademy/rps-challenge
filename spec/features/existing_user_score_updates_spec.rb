feature 'User score updates' do
  context 'when player wins' do
    scenario 'when user already exists, their score updates' do
      allow_any_instance_of(Randomizer).to receive(:result).and_return("Rock")
      log_in_and_play_and_choose_paper
      log_in_and_play_and_choose_paper
      expect(page).to have_content("Rob 2 0")
    end
  end

  def log_in_and_play_and_choose_paper
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
    click_button('Paper')
  end
end
