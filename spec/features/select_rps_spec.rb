feature 'Choose to play Rock Paper Scissors' do
  scenario "After signing in, select to play rock paper scissors" do
    visit '/'
    fill_in 'name', with: 'Andy'
    click_button 'Submit'
    click_button 'Rock Paper Scissors'
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
