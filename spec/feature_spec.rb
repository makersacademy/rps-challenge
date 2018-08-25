feature 'Enter name' do
  scenario 'can enter name' do
    sign_in_and_play
    expect(page).to have_content 'Hi Josh!'
  end
end

feature 'Select Rock/Paper/Scissors' do
  before { sign_in_and_play }
  scenario { click_link 'Rock' }
  scenario { click_link 'Paper' }
  scenario { click_link 'Scissors' }
end
