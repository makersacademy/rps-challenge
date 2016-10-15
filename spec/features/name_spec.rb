feature 'Start' do
  scenario 'Ask player to enter their name, and then display their name' do
    visit('/')
    fill_in :p1, with: 'Kath'
    click_button "Press on"
  end
end
