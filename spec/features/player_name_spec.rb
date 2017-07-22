feature 'player can register name' do

  scenario 'player is prompted to enter name' do
    visit '/'
    expect(page).to have_content 'Welcome player - please enter your name'
  end

  scenario 'player can enter their name' do
    sign_in
    expect(page).to have_content 'OK Dave - choose your weapon!'
  end
end
