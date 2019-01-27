feature 'choose among Rock, Paper and Scissors' do
  it 'it chooses Rock' do
    visit('/')
    fill_in :player_1, with: 'Adrien'
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content 'Adrien you have chosen Rock!'
  end
end
