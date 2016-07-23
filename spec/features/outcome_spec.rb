describe 'Outcome page' do
  scenario 'displays the outcome of the battle' do
    sign_in_and_play
    click_button "I was born ready"
    click_button "Feeling pretty good about myself right now"
    click_button "..."
    expect(page).to have_content "You"
  end

  scenario 'after seeing outcome, return to first page on click' do
    sign_in_and_play
    click_button "I was born ready"
    click_button "Feeling pretty good about myself right now"
    click_button "..."
    click_button "I want some more!"
    expect(page).to have_content "Enter names"
  end
end
