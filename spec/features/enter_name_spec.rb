feature 'Entering name' do
  scenario 'Submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Hi James, lets play Rock Paper Scissors!'
  end
end
