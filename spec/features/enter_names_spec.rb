feature 'Enter player name' do
  scenario 'Submitting the player name' do
    sign_in
    expect(page).to have_content('Do your best p1')
  end
end
