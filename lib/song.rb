require 'pry'

class Song

  attr_accessor :name, :artist
  attr_reader :artist_name

  def initialize(name)
    @name = name
  end

  def artist_name= (artist_name)
    Artist.find_or_create_by_name(artist_name)
    Artist.add_song(song)
  end

  def self.new_by_filename(file_name)
    new_song = file_name.split(" - ")[1]
    new_song.artist_name
    new_song
  end

end
