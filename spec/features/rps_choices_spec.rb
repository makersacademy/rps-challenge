require_relative '../../app.rb'

feature 'displaying of rps choices' do
  scenario 'user enters name' do
    sign_in
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
