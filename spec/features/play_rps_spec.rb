# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'be able to play rock, paper, scissors with computer' do
  scenario 'make selection and get result' do
    srand(5432)
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    fill_in :selection, with: 'Rock'
    click_button 'Throw!'
    expect(page).to have_content 'You Lose Dave!'
  end
end
