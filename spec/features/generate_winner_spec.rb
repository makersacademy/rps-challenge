require 'capybara/rspec'

feature 'generate winner' do
  scenario 'player wins' do
    allow(Player).to receive(:choose_rand) {"Yellow-throated sneaker"}
    sign_in_and_play
    click_button 'Blue-throat'
    puts Player.choose_rand
    expect(page).to have_content 'You got the girl!'
  end
end

