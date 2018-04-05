class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name= (artist_name)
    @artist_name = artist_name
  end

  def self.new_by_filename
    new_instance = Song.new(name)
    new_instance.name = file_name.split("-")[1]
    new_instance.artist_name = file_name.split("-")[0]
    new_instance
  end

end
