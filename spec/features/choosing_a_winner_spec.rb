RSpec.feature 'choosing a winner', type: :feature do
  scenario 'when player loses' do
    allow_any_instance_of(Computer).to receive(:hand).and_return 'Paper'
    enter_name_and_play
    click_on 'ROCK'
    expect(page).to have_content 'YOU LOSE'
  end
end
