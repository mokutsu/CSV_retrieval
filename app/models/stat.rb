class Stat < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      stat1 = row.to_hash
      stat = Stat.create(stat1)
      binding.pry
    end
  end

end
