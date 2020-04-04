RSpec.feature 'keeping score', type: :feature do
  scenario 'keeping score during a session' do
    allow_any_instance_of(Game).to receive_message_chain(:opponent, :hand).and_return 'Scissors'
    enter_name_and_play
    click_on 'ROCK'
    click_on 'PLAY AGAIN'
    click_on 'ROCK'
    expect(page).to have_content '2 - 0'
  end
end
