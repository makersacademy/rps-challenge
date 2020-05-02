feature 'Setting up game' do
  scenario 'Player input their names' do
    visit('/')
    fill_in :player_1, with: 'Jed'
    fill_in :player_2, with: 'Jedo'
    click_on :Submit
    expect(page).to have_content 'Jed vs Jedo'
  end
end
