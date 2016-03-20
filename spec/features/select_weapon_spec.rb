feature 'Weapon Selection', type: :feature do
  let(:player1) { 'Gon Freecs' }
  let(:player2) { 'Darth Vadar' }
  scenario 'User is given a weapon choice' do
    visit '/'
    click_link 'register'
    fill_in 'player1', with: player1
    click_button 'Submit'
    expect(page).to have_button("rock")
    expect(page).to have_button("paper")
    expect(page).to have_button("scissors")
    expect(page).to have_button("lizard")
    expect(page).to have_button("spock")
  end

  scenario "It's a tie" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    visit '/'
    click_link 'register'
    fill_in 'player1', with: player1
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "It's a tie"
  end

  scenario "Player one Won" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    visit '/'
    click_link 'register'
    fill_in 'player1', with: player1
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content "#{player1} wins!"
  end
end
