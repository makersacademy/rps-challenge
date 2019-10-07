feature 'Enter names' do

  scenario 'player is instructed to submit name' do
    visit('/')
    fill_in :player_1_name, with: 'Zaira'
    expect(page).to have_content 'Enter your name'
  end

  scenario 'player can submit name' do
    sign_in_and_play
    expect(page).to have_content 'Zaira'
  end
end
