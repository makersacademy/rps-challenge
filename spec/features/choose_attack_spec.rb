feature 'choose rock paper or scissors' do
  scenario 'select rock' do
    visit('/')
    fill_in 'player_1', with: 'Gina'
    click_button('Save')
    select('Rock', from: 'Select_Box')
    expect(page).to have_content('You entered rock')
  end
end

