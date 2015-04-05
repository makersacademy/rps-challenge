require 'capybara/rspec'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Player can register their name' do
  scenario '' do
    player = Player.new('Name')
    expect(player.name).to eq 'Name'
  end
end
