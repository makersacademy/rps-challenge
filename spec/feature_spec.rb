feature 'Testing infastructure' do
  scenario 'runs app and checks page content' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
