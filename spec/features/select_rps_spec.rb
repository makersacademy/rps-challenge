
feature 'Select rock, paper or scissors' do
  scenario 'returns a winner' do
    sign_in_and_play
    click_button 'rock'
    click_button 'scissors'
    expect(page).to have_content "Result"
  end
end
