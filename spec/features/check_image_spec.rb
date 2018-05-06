feature 'image change' do
  scenario 'image changes to rock.png' do
    single_player_game
    click_link('rock')
    visit('/result')
    expect(page).to have_css("img[src*='rock.png']")
  end

  scenario 'image changes to paper.png' do
    single_player_game
    click_link('paper')
    visit('/result')
    expect(page).to have_css("img[src*='paper.png']")
  end

  scenario 'image changes to rock.png for ai' do
    single_player_game
    click_link('scissors')
    srand(2)
    visit('/result')
    expect(page).to have_css("img[src*='rock.png']")
  end

  scenario 'image changes to rock.png for ai' do
    single_player_game
    click_link('rock')
    srand(4)
    visit('/result')
    expect(page).to have_css("img[src*='scissors.png']")
  end

  scenario 'image changes to rock.png for ai' do
    single_player_game
    click_link('rock')
    srand(1)
    visit('/result')
    expect(page).to have_css("img[src*='paper.png']")
  end
end
