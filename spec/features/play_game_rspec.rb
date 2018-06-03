feature 'play rps' do
  scenario 'The computer chooses rock, paper or scissors' do
    visit('/')
    click_button 'Play'
    expect(page).to have_content 'Rock'
  end
end
