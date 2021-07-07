feature 'Testing infastructure' do
  scenario 'Can run app and check page works' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
  scenario 'Can run app and check page works' do
    visit('/')
    click_button "Start Game"
    expect(page).to have_content 'Enter Name'
  end
end
