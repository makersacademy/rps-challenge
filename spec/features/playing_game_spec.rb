feature 'Playing RPS' do
  scenario 'expect Rock button to be on page' do
  visit('/')
  fill_in :"name", with: "Gary"
  click_button 'Submit'
  expect(page).to have_button "Rock"
  expect(page).to have_button "Paper"
  expect(page).to have_button "Scissors"

  end


end