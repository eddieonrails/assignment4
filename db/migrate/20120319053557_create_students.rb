class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.string :Student_id
      t.integer :Id_no
      t.string :email
      t.string :password
      t.string :campus

      t.timestamps
    end
  end

  def self.down

    drop_table :students

  end
end
