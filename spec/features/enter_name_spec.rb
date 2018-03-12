feature 'Enter name' do
  scenario 'submitting name of the player' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
  end
end
