feature 'Two player screen' do
  scenario 'the title page loads' do
    visit '/'
    click_button "Human"
    expect(page).to have_content "Rock Paper Scissors Lizard Spock"
  end
end
