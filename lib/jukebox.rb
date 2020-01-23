# Add your code here


def intro
    puts "Please enter a command:"
    input = gets.chomp
end

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(arr)
    arr.each_with_index {|x, index| puts (index + 1).to_s + ". " + x}
end

def play(input, arr)
    
    if (1..arr.length).include? input.to_i
        puts arr[input.to_i]
    elsif arr.include? input
        puts input
    end

end

def exit
    puts "goodbye"
    return
end
      
def command(input)
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
    case input
    when "help"
        help
        command(intro)
    when "list"
        list(songs)
        command(intro)
    when "play"
        puts "Enter a song or its ID number"
        songinput = gets.chomp
        play(songinput, songs)
        command(intro)
    when "exit"
        exit
    end
end

command(intro);

