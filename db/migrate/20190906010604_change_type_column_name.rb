class ChangeTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :specialities, :type, :speciality
  end
end
