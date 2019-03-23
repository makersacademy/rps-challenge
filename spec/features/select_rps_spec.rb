feature 'Choose to play Rock Paper Scissors' do
  scenario "After signing in, select to play rock paper scissors" do
    start_rps
    click_button 'rock'
    expect(page).to have_content 'You chose ROCK'
  end
end
