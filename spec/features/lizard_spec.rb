feature 'Lizard poisons Spock' do
  scenario 'Computer wins' do
    allow_any_instance_of(Computer).to receive(:random_weapon).and_return(:lizard)
    sign_in
    click_button 'Spock'
    expect(page).to have_content 'Computer wins :('
  end
end
