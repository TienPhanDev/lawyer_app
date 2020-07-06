class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string    :title
      t.datetime  :date
      t.string    :injury
      t.integer   :damages
      t.string    :description
      t.boolean   :police_report?, default:false
      t.integer   :client_id
      t.integer   :lawyer_id

      t.timestamps
    end
  end
end
