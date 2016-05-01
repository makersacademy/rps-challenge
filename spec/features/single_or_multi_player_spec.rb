feature 'single or multi player' do
  scenario 'can choose single player' do
    visit '/'
    expect(page).to have_button 'Solo'
  end
  scenario 'can choose multi player' do
    visit '/'
    expect(page).to have_button 'I have friends!'
  end
end
