feature 'Be presented with rock paper scissors options' do
  scenario 'user can select a button' do
    visit ('/play')
    expect(page).to have_selector(:link_or_button, "Rock")
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors') 
  end
end
