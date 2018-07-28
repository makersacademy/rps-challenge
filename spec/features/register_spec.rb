feature 'Register:' do
  scenario 'player can enter name' do
    visit('/')
    fill_in :player, with: "Mufasa"
    click_button 'Let\'s rumble!'
    expect(page).to have_content 'Mufasa vs Computer'
  end
end
