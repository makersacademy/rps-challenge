feature 'Testing infastructure' do
  scenario 'Can run app and check page works' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
