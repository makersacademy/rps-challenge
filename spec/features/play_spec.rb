# in spec/features/play_spec.rb

# User story 2:
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature '2. Play' do
  scenario 'player one chooses Rock, Paper or Scissors' do
    visit('/register')
    fill_in :p1_name, with: 'Me'
    click_button 'Submit'
    expect(page).to have_content 'Choose Rock, Paper or Scissors'
  end
end
