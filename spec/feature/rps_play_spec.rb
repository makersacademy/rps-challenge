feature 'user can play rock paper scissors' do
  scenario 'user can select rock, paper or scissors' do
    visit('/')
    fill_in 'player', with: 'Alex'
    click_button 'Submit'
    expect(page).to have_button('rock' && 'paper' && 'scissors')
  end
end
