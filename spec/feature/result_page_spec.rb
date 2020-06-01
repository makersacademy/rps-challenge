require_relative 'sign_in_process'

feature 'testing the result page' do
  scenario 'should ask the player if they want to play again' do
    sign_in_process
    click_button 'Start'
    expect(page).to have_content('Do you want to play again?')
    expect(page).to have_content('you lost' || 'you won' || "it's a draw")
  end
end
