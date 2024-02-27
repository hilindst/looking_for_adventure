class FixColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :adventures, :type, :adventure_type
  end
end