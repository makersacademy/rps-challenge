feature 'Play game' do
  scenario 'player chooses a move and gets a win screen' do
    visit '/'
    fill_in 'name', with: "Mittens"
    click_button 'Submit'
    select 'Rock', from: 'move'
    allow_any_instance_of(Array).to receive(:sample) { "Scissors" }
    click_button 'Submit'
    expect(page).to have_content 'You win!'
  end
end
