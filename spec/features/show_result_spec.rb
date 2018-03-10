feature 'showing the result' do

  before(:each) { sign_in_and_play }

  scenario "player wins" do
    allow_any_instance_of(Game).to receive(:result).and_return 'Cleopatra, you win!'
    click_on('rock')
    expect(page).to have_content('Cleopatra, you win!')
  end

  scenario 'player loses' do
    allow_any_instance_of(Game).to receive(:result).and_return 'Cleopatra, you lose!'
    click_on('rock')
    expect(page).to have_content('Cleopatra, you lose!')
  end

  scenario 'game draws' do
    allow_any_instance_of(Game).to receive(:result).and_return "It's a draw!"
    click_on('rock')
    expect(page).to have_content("It's a draw!")
  end
end
