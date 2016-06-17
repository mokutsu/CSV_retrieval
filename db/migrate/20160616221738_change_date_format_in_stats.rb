class ChangeDateFormatInStats < ActiveRecord::Migration
  def change
    change_column(:stats, :date, :string)
  end
end
