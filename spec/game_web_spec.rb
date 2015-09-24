feature "rock paper scissors online" do

  scenario "it can start new game" do
    visit  '/'
    expect(page.status_code).to eql(200)
    click_button 'Start!'
  end

  scenario "it can register player name" do
    visit '/register'
    click_button 'Submit'
    expect(page.status_code).to eql(200)
    expect(current_path).to eq '/game'
  end

  scenario "it can choose rock" do
    visit '/game'
    click_button 'Rock'
    expect(page.status_code).to eql(200)
    expect(current_path).to eq '/outcome'
  end

  scenario "it can choose paper" do
    visit '/game'
    click_button 'Paper'
    expect(page.status_code).to eql(200)
    expect(current_path).to eq '/outcome'
  end

  scenario "it can choose scissors" do
    visit '/game'
    click_button 'Scissors'
    expect(page.status_code).to eql(200)
    expect(current_path).to eq '/outcome'
  end


end
