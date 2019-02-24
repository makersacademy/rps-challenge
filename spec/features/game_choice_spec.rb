feature 'Selects choice' do
  scenario 'rock, paper or scissors' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Make a selection:'
    select 'Rock', from: 'rps_choices'
    click_button 'Go'
  end
end
