feature 'Title screen' do
  scenario 'the title page loads' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
  end
  scenario 'there is a button that starts the game' do
    ready_to_play
    expect(page).to have_current_path '/play'
  end
end