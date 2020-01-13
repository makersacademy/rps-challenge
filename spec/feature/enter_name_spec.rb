# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game



feature 'name form' do
  scenario 'checks name entered equales name from form' do
    visit '/'
    fill_in 'name', with: "Luke"
    click_button 'Play'

    expect(page).to have_content "Luke"
  end
end 