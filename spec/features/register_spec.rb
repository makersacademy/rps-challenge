

feature 'Registering name' do
  scenario 'A name can be registered and viewed' do
  sign_in_player
  expect(page).to have_content 'Player: One'
  end
end