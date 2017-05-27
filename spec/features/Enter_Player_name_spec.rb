feature 'Enter Player name' do
  scenario 'A player can enter their name' do
    visit('/')
    fill_in('player', with: 'Jade')
    click_button('Begin')
    expect(page).to have_content "Hello Jade, let's play!"
  end
end
