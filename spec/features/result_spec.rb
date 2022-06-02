feature 'Result of choice' do
  scenario 'Player 1 chooses Rock' do
    visit('/')
    fill_in :player_1_name, with: 'Joe'
    click_button 'Submit'
    choose ('rock')
    click_button 'Play'
    expect(page).to have_content "Joe chose rock"
  end

  scenario 'Computer chooses paper' do
    visit('/')
    fill_in :player_1_name, with: 'Joe'
    click_button 'Submit'
    choose ('rock')
    click_button 'Play'
    expect(page).to have_content "Joe chose rock"
    expect(page).to have_content "AI chose paper"
  end
end