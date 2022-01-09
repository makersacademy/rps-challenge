feature 'Register name before playing game' do
  scenario 'Enter name' do
    sign_in_and_play
    expect(page).to have_content ("Welcome Sarah!")
  end
end