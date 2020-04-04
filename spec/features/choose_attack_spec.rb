feature 'choose rock paper or scissors' do
  scenario 'choose rock' do
    visit('/')
    fill_in 'player_1', with: 'Gina'
    click_button('Save')
    click_button('Rock')
    expect(page).to have_content('You entered rock')
  end
end

