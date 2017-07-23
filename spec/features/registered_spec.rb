feature 'name has been registered' do
  scenario 'see confirmation of registration' do
    visit('/registered')
    click_button "Choose your Weapon!"
    expect(body).to include 'choose your weapon'
  end
end
