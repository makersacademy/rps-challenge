def sign_in_submit
  visit '/'
  fill_in('Name', with: "Sam")
  click_on('Start single player!')
end


def mp_sign_in_submit
  visit '/'
  fill_in('player_one', with: "Aardvark")
  fill_in('player_two', with: "Zebra")
  click_on('Start multiplayer!')
end