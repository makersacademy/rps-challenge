feature 'Register name' do
  scenario 'A player register his name' do
    visit('/')
    fill_in :player, with: 'Raymond'
    click_button 'Submit'
    expect(page).to have_content "Raymond, let's start the game!"
  end

  feature 'Play RPS' do
    scenario "Player picked rock" do
      visit('/')
      fill_in :player, with: 'Raymond'
      click_button 'Submit'
      click_button 'ROCK'
      expect(page).to have_content "Raymond chose ROCK"
    end
  end
end
