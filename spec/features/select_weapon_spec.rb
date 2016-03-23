feature 'Weapon Selection', type: :feature do
  let(:player1) { 'Gon Freecs' }
  let(:player2) { 'Darth Vadar' }
  scenario 'User is given a weapon choice' do
    sign_in_and_play(player1)
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissors")
    expect(page).to have_button("lizard")
    expect(page).to have_button("spock")
  end
end
