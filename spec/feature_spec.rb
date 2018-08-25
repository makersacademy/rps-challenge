feature 'Enter name' do
  scenario 'can enter name' do
    sign_in_and_play
    expect(page).to have_content 'Hi Josh!'
  end
end

feature 'Select Rock/Paper/Scissors' do
  before { sign_in_and_play }
  scenario { 
    click_on 'Rock' 
    expect(page).to have_content 'You picked Rock!'
  }
  scenario { click_on 'Paper' }
  scenario { click_on 'Scissors' }
end

# feature 'Game has a winner' do
#   scenario 'Player selects rock and computer selects paper' do
#     sign_in_and_play
#     click_link 'Rock'
#   end
# end