feature 'home page' do
  scenario 'displays home message' do
    visit('/')
    expect(page).to have_content 'Dills Rock Paper Scissors Extravaganza!!'
  end
end
