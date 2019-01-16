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

def help # outputs instructions on how to use the Jukebox
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  # ask user to input song name or number
  puts "Please enter a song name or number:"
  response = gets.chomp
  # output 'playing (song name)'
  # iterate over the array.  does response == index+1 or song?
  songs.each_with_index do |song, index|
    if response == song || response == index + 1
      puts "Playing: #{song}"
    else
      puts "Invalid input, please try again"
    end
  end

end

def exit_jukebox
  puts "Goodbye"
  # should shut down program
end

def run(songs)
  help
  loop do
  puts "Please enter a command:"
  command = gets.chomp
    case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      end
  end
end
