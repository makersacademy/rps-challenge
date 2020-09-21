feature 'clickable buttons' do
  scenario 'choose rock' do
    enter_names
    find("[id='rock']").click
    expect(page).to have_content "Pinky chose"
  end

  scenario 'choose paper' do
    enter_names
    find("[id='paper']").click
    expect(page).to have_content "Pinky chose"
  end

  scenario 'choose scissors' do
    enter_names
    find("[id='scissors']").click
    expect(page).to have_content "Pinky chose"
  end

  scenario 'choose lizard' do
    enter_names
    find("[id='lizard']").click
    expect(page).to have_content "Pinky chose"
  end

  scenario 'choose spock' do
    enter_names
    find("[id='spock']").click
    expect(page).to have_content "Pinky chose"
  end
end

feature 'random computer choice' do
  it 'shows the computer choice' do
    enter_names
    find("[id='spock']").click
    expect(page).to have_content "The Brain chose"
  end
end

feature 'score' do
  it 'shows the player scores' do
    enter_names
    expect(page).to have_content 0
  end
end

feature 'reset' do
  it 'resets the player scores' do
    enter_names
    20.times { find("[id='rock']").click }
    click_button 'Reset scores'
    expect(page).to have_content 0
  end
end
    