feature 'Enter name test' do
  scenario 'submitting player name' do
    visit('/')
    fill_in "player_name", with: 'Tam'
    click_button "Let's play!"
    expect(page).to have_content 'Hi Tam! Choose Rock, Paper or Scissors'
  end
end
