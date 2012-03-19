class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string :name
      t.string :surname
      t.string :student_id
      t.integer :id_no
      t.string :email
      t.string :password
      t.string :campus

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
