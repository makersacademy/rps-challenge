feature 'showing the result' do

  before(:each) { sign_in_and_play }

  scenario "player wins" do
    allow_any_instance_of(Game).to receive(:result).and_return 'Frank, you win!'
    click_on('rock')
    expect(page).to have_content('Frank, you win!')
  end

  scenario 'player loses' do
    allow_any_instance_of(Game).to receive(:result).and_return 'Frank, you lose!'
    click_on('rock')
    expect(page).to have_content('Frank, you lose!')
  end

  scenario 'game draws' do
    allow_any_instance_of(Game).to receive(:result).and_return "Draw game!"
    click_on('rock')
    expect(page).to have_content("Draw game!")
  end
end
