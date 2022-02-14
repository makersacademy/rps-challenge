feature 'RPS Choices' do
  scenario ' ' do
    sign_in_and_play
    click_button 'Start'
    expect(page).to have_content 'Choose wisely'
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end