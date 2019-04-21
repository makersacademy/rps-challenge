
feature 'playing a game' do
  before do
    visit '/'
    fill_in :name, with: 'Mike'
    click_button 'Submit'
  end

  scenario 'see the options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'game chooses an option' do
    click_button 'Rock'
    message = find(:css, "#opponent").text
    expect(possible_messages).to include message
  end

  def possible_messages
    [:Rock, :Paper, :Scissors].map { |option| "The opponent chose #{option.to_s}!"}
  end
end
