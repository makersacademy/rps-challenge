# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'starting game' do
  scenario 'selecting submit button to start game' do
    begin_and_submit
    click_button "START!"
    expect(page).to have_content('Lets play Damo')
    expect(page).to have_content('Please select your move!') 
  end
end
