feature 'player can see a choice of three weapons' do
  scenario 'player chooses rock' do
    visit('/')
    fill_in :player, with: 'Bob'
    click_button 'start'
    click_button 'rock'
    expect(page).to have_content 'Your choice: rock'
  end

end
