class CreateConsults < ActiveRecord::Migration[6.0]
  def change
    create_table :consults do |t|
      t.integer   :request_id
      t.datetime  :time
      t.string    :location

      t.timestamps
    end
  end
end
