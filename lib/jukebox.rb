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

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, indx|
    indx1 = indx + 1
    puts "#{indx1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_info = gets.chomp
  songs.each_with_index do |song, indx|
    indx1 = indx + 1
    if song_info.include?(song) || song_info.to_i == indx1
      puts "Playing #{song}"
      break
    else
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  puts "Please enter a command:"
  cmd = gets.chomp
  while cmd != "exit"
    if cmd == "list"
      list(songs)
      puts "Please enter a command:"
      cmd = gets.chomp
    elsif cmd == "play"
      play(songs)
      puts "Please enter a command:"
      cmd = gets.chomp
    elsif cmd == "help"
      run
    else
    end
  end
  exit_jukebox
end
