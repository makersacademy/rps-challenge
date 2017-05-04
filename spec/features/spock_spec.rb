feature 'Spock vaporizes Rock' do
  scenario 'User wins' do
    allow_any_instance_of(Computer).to receive(:random_weapon).and_return(:rock)
    sign_in
    click_button 'Spock'
    expect(page).to have_content 'User chose spock!'
  end
end
