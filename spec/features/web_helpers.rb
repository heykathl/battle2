def sign_in_and_play
  visit '/'
  fill_in("player_1", with: "Lats")
  fill_in("player_2", with: "Cats")
  click_button 'Play'
end