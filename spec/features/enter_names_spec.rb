require './app'

feature 'Enter names' do
  scenario 'players enter names' do
    visit '/'

    fill_in :player1, with: 'Chayya'
    fill_in :player2, with: 'Avrami'
    click_button 'submit'
    expect(page).to have_content 'Chayya vs Avrami'
  end
end
