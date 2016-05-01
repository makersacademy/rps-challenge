feature 'time to play' do
  before do
    visit ('/')
    fill_in :player, with: 'Maru'
    click_button 'Play'
  end

  scenario 'show choises' do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

end
