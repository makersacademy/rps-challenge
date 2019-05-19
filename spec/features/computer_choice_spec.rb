feature 'computer opponent choice' do
  scenario "the opponent shows their choice" do
    start_game
    click_button 'Rock'
    expect(page).to satisfy { page.has_content?('Your opponent chooses Rock') or page.has_content?('Your opponent chooses Paper') or page.has_content?('Your opponent chooses Scissors') }
  end
end
