require_relative 'sign_in_process'

feature 'testing game page' do
  scenario 'should ask for the player\'s move' do
    sign_in_process
    expect(page).to have_content('Hello Bene, what\'s your move?')
  end
end
