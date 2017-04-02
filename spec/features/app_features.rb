feature 'Homepage greeting' do
  scenario 'can run app and display game name' do
    visit('/')
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sonny'
    click_button 'Submit'
    expect(page).to have_content 'Sonny vs. Computer'
  end
end
