class Stat < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|

      stat = row.to_hash.map{|k, v| {k.to_sym => v} }
      stat = stat.inject{|mem, newhash| mem.merge(newhash)}
      stat_date = stat.slice(:date)
            binding.pry
      stat_int = stat.slice(:money, :like, :views, :share)
      stat_int.each do |key, value|
        stat_int[key] = value.to_i
      end
      stat.merge(stat_date).merge(stat_int)
      stat_new = Stat.create(stat)
    end
  end

end
