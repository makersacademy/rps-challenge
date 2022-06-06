feature 'Enter player names' do
  scenario 'Player submits name' do
    sign_in_and_play()
    expect(page).to have_content 'Player: Raphaella'
  end
end