class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :requests, :police_report?, :police_report
  end
end
