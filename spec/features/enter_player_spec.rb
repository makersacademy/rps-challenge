feature 'entering player name' do
  scenario 'submit player name' do
    visit('/')
    fill_in :playerName, with: "Andy"
    click_button 'Submit'
    expect(page).to have_content "Andy"
  end
end
