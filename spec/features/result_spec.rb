# 3. I would like to find out the result

feature 'Result' do

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
  end

  scenario 'Win' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Result: Goose Won!"
  end

  scenario 'Tally' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Tally: Wins: "
  end

end

feature "Capybara" do

  scenario 'Always loses' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Capybara'
    expect(page).to have_content :Lost!
  end

end
