class AddStatusColumnToConsults < ActiveRecord::Migration[6.0]
  def change
    add_column :consults, :status, :string
  end
end
