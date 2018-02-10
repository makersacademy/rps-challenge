feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors")
  end
end

feature 'Enter players name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Ben'
    click_button 'Submit'
    expect(page).to have_content 'Ben vs Computer'
  end
end
