# Add your code here
intro = "Please enter a command:"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def options(input)
  case input
    when "help"
      
      puts "I accept the following commands:"
      puts "- help : displays this help message"
      puts "- list : displays a list of songs you can play"
      puts "- play : lets you choose a song to play"
      puts "- exit : exits this program"
      
      puts intro
      input = gets.chomp
      options(input)
    when "list"
      
      count = 0
        while count < songs.length
          puts (count+1).to_s + ". " + songs[count]
          count += 1
        end
        
      puts intro
      
      input = gets.chomp
      options(input)
      
    when "play"
      
      songinput = gets.chomp
      
        if (1..9).to_a.include? songinput.to_i
          puts "Playing " + songs[count]
        elsif songs.include? songinput
          puts "Playing " + songinput 
        end  
        
      puts intro
      input = gets.chomp
      options(input)
    when "exit"
      
      puts "goodbye"
      return
      
  end
end

puts intro
input = gets.chomp
options(input)
    

