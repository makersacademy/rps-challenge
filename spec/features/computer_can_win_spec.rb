feature 'Computer can beat User' do
  scenario 'Computer wins game' do
    allow_any_instance_of(Computer).to receive(:random_weapon).and_return(:scissors)
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'Computer wins :('
  end
end
