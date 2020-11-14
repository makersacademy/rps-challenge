feature 'Enter names' do
  scenario 'User submits names' do
    visit('/')
    fill_in :player_1_name, with: 'Mel'
    click_button 'Submit'
    expect(page).to have_content 'Mel vs. Computer - Make a choice'
  end
end

feature 'Player makes a choice' do
  scenario 'Chooses Rock, Paper or Scissors' do
    visit('/')
    fill_in :player_1_name, with: 'Mel'
    click_button 'Submit'
    expect(page).to have_content 'Mel vs. Computer - Make a choice'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
    click_button 'Rock'
  end
end

# Still need to pass this test
feature 'Player wins' do
  scenario 'Chooses Rock, Paper or Scissors' do
    allow(["Rock", "Paper", "Scissors"]).to receive(:sample).and_return("Scissors")
    visit('/')
    fill_in :player_1_name, with: 'Mel'
    click_button 'Submit'
    expect(page).to have_content 'Mel vs. Computer - Make a choice'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
    click_button 'Rock'
    expect(page).to have_content("You won!")
  end
end
