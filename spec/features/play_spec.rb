feature 'Play the game' do
  scenario 'player can click a button to choose rock, paper or scissors' do
    visit '/'
    fill_in 'player_name', with: 'Alessa'
    click_on 'Submit'
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'player can click a button to choose rock, paper or scissors' do
    visit '/'
    fill_in 'player_name', with: 'Alessa'
    click_on 'Submit'
    click_on 'Rock'
    expect(page).to have_content "You've chosen Rock!"
  end

  scenario 'player can click a button to choose rock, paper or scissors' do
    visit '/'
    fill_in 'player_name', with: 'Alessa'
    click_on 'Submit'
    click_on 'Rock'
    expect(page).to have_content "Computer has chosen"
  end

  # scenario "the player's move and the computers move will be compared" do
  #   visit '/'
  #   fill_in 'player_name', with: 'Alessa'
  #   click_on 'Submit'
  #   click_on 'Rock'
  #   expect(subject).to receive(:makes_move) { 'Scissors' }
  #   expect(page).to have_content "You won!"
  # end

end
