feature 'Selects Choice' do
  scenario 'rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content 'Make a selection:'
    select 'Rock', from: 'user_choice'
    click_button 'Go'
    expect(page).to have_content 'Computer played Scissors - You played Rock. You won!'
  end
end
