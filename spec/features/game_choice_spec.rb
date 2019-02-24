feature 'Selects choice' do
  scenario 'rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content 'Make a selection:'
    select 'Rock', from: 'rps_choices'
    click_button 'Go'
    expect(page).to have_content 'Computer Scissors - You Rock. You won!'
  end
end
