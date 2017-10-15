feature 'Two player screen' do
  before do
    visit '/'
    click_button "Human"
  end
  scenario 'the title page loads' do
    expect(page).to have_content "Rock Paper Scissors Lizard Spock"
  end
  scenario 'player 1 can enter their name' do
    expect(page).to have_field "player1"
  end
  scenario 'player 2 can enter their name' do
    expect(page).to have_field "player2"
  end
end
