feature 'Testing infrastructure' do
  scenario 'checks what homepage says' do
    visit('/')
    expect(page).to have_content "Rock, paper, scissors!"
  end
end

feature 'Players names' do
  scenario 'expects player to fill in their names then see it' do
    visit('/')
    fill_in('player', with: 'Spock')
    click_button('Submit')
    expect(page).to have_content "Hello, Spock!"
  end
end
