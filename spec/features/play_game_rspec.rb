feature 'Play rps' do
  scenario 'where the computer chooses rock, paper or scissors' do
    visit('/game')
    click_button 'Play'
    expect(page).to have_content 'Rock'
  end
end
