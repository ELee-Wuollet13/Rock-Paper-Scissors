#!/usr/bin/ruby

require ('./lib/rps')

game = RPS.new("hand", "hand")
until (game.score1 === 5) | (game.score2 === 5)
  puts 'player one throws:'
  hand = gets.chomp
  throw2 = game.computer
  game.throw(hand)
  puts "you:" + hand
  puts "computer: "+ throw2
  puts "win? " + game.wins?.to_s
  puts game.win_count
  if game.score1 === 5
    puts "WINNER!"
  elsif game.score2 === 5
    puts "loser :("
  end
end
