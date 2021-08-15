def login_and_play
  submit_form = find("//input[type='submit']")
  fill_in(:name, with: "Mike")
  submit_form.click
end