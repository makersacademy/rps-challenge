feature 'entering name' do
  scenario 'user enters name' do
    sign_in_and_play
    expect(page).to have_content('Neha')
  end

end
