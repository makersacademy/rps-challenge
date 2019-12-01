feature 'testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Time for some rock, paper and scissors!"
  end
end

feature 'register name' do
  scenario 'players can enter and submit their names' do
    visit('/')
    fill_in :player_1_name, with: 'Juan'
    click_button 'Submit'
  expect(page). to have_content 'Feeling pumped Juan?'
  end
end
