class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string    :name
      t.string    :email
      t.string    :password_digest
      t.string    :state
      t.integer   :years_experience
      t.boolean   :lawyer, default:false

      t.timestamps
    end
  end
end
