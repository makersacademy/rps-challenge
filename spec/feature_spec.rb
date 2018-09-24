feature Play do
  scenario 'Splash page should exist' do
    visit('/')
    fill_in('player_1_name', with: 'John')
  end
end
