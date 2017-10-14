feature 'homepage' do
  scenario 'player visits homepage' do
    visit('/')
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'player enters name' do
    visit('/')
    fill_in "name", with: "Lady Macbeth"
    click_on "Enter"
    expect(page).to have_content "Let's play Rock, Paper, Scissors!"
  end
end

feature 'play' do
  scenario 'player submits name and sees it on "/play" view' do
    visit('/')
    fill_in "name", with: "Lady Macbeth"
    click_on "Enter"
    expect(page).to have_content "Lady Macbeth"
  end

  scenario 'player chooses "Rock"' do
    visit('/')
    fill_in "name", with: "Lady Macbeth"
    click_on "Enter"
    click_on "Rock"
    expect(page).to have_content "Lady Macbeth chose Rock"
  end
end
