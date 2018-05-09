feature 'enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Zoe'
    click_button 'Submit'
    expect(page).to have_content "Zoe is playing Rock, Paper, Scissors"
  end
end
