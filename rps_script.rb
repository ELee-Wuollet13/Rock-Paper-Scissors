#!/usr/bin/ruby

require ('./lib/rps')


game = RPS.new("rock", "rock")
until (game.score1 === 5) | (game.score2 === 5)
  puts 'player one throws:'
  throw1 = gets.chomp
  throw2 = game.computer
  puts "computer: "+ throw2
  puts game.wins?
  puts game.win_count
  if game.score1 === 5
    puts "WINNER!"
  elsif game.score2 === 5
    puts "loser :("
  end
end
