class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name = (artist_name)
    @artist_name = artist_name
  end

  def self.new_by_filename(file_name)
    new_instance = self.new
    new_instance = file_name.split("-")[1]
    new_instance.artist_name = file_name.split("-")[0]
    new_instance
  end

end
