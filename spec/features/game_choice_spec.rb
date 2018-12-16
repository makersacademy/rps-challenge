feature 'slects choice' do
  scenario 'slects rock, paper or scissors' do
    visit('/play')
    sign_in_and_play
    expect(page).to have_content 'Make a selection:'
    select 'Rock', from: 'rps_choices'
    click_button 'Go'
  end
end
