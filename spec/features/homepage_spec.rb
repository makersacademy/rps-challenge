feature 'Game' do

  scenario "it tests the homepage says Hello!" do 
    visit('/')
    expect(page).to have_content "Hello!"
  end

  scenario "player can enter their name to begin playing" do
    visit('/')
    expect(page).to have_field('player_name')
  end

end
