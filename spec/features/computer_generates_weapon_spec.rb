feature 'Computer can generate weapon' do
  scenario 'User draws rock, Computer draws scissors' do
    allow_any_instance_of(Computer).to receive(:random_weapon).and_return(:scissors)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Computer chose scissors!'
  end
end
