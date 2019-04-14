class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)

  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def find(id)
    search_results = db.execute("SELECT * FROM pokemon WHERE id=?", id)
    Pokemon.new(id: search_results[0], name:search_results[1], type: search_results[2], db: db)
  end

end
