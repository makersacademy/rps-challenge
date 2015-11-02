feature 'Register Name' do
  scenario 'Submitting name' do
    register_and_play
    expect(page).to have_content "Rob Plays Rock Paper Scissors"
  end
end