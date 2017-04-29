feature 'Game will confirm if there has been a draw' do
  scenario 'Both User and Computer draw rock' do
    allow_any_instance_of(Computer).to receive(:random_weapon).and_return(:rock)
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Its a Draw!'
  end
end
