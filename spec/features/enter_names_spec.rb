
feature 'Register name' do
  scenario 'entering name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Steve to Rock Paper Scissors!'
  end
end
