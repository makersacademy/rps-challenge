feature 'Shows submit form for name' do
  scenario 'user visits homepage' do
    visit("/")
    fill_in :player_1_name, with: 'Xain'
  end
end
