require 'capybara/rspec'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Player can register their name' do
  scenario 'returned name should equal initialised name' do
    name = 'Name'
    player = Player.new(name)
    expect(player.name).to eq name
  end
end
