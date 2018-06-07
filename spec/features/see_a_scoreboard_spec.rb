feature 'Viewing scoreboard' do
  scenario 'A user can see the scoreboard on results page' do
    connection = PG.connect(dbname: 'rpschallenge_test')

    connection.exec("INSERT INTO scoreboard VALUES('Dave', 3, 1);")
    connection.exec("INSERT INTO scoreboard VALUES('Lucy', 2, 6);")

    log_in_and_play
    click_button('Paper')

    expect(page).to have_content 'Dave 3 1'
    expect(page).to have_content 'Lucy 2 6'
  end


  def log_in_and_play
    visit("/")
    fill_in('name', with: 'Rob')
    click_button('Begin Game')
  end
end
