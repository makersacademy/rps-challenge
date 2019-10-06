require 'capybara'

feature 'submitting move' do
  scenario 'Boris chooses rock' do
    sign_in_and_play
    click_button 'Rock'

    expect(page).to have_text("Boris chooses Rock")
  end

  scenario 'Boris chooses paper' do
    sign_in_and_play
    click_button 'Paper'

    expect(page).to have_text("Boris chooses Paper")
  end

  scenario 'Boris chooses paper' do
    sign_in_and_play
    click_button 'Scissors'

    expect(page).to have_text("Boris chooses Scissors")
  end
end
