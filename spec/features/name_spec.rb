feature 'Start' do
  scenario 'Ask player to enter their name, and then display their name' do
    visit('/')
    fill_in :player1, with: 'Kath'
    click_button "Submit"
  end
end
