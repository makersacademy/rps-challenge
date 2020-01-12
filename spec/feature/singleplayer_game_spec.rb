feature 'Single Player Game' do
  scenario 'Name is shown' do
    sign_in_and_play
    expect(page).to have_content("It's Chris's Turn!")
  end
  scenario 'Moves are shown' do
    sign_in_and_play
    expect(page).to have_content("Spock")
  end
  scenario 'Moves can be submitted' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Play Move!')
  end
end
