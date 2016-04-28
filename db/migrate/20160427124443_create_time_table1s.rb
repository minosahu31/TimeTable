class CreateTimeTable1s < ActiveRecord::Migration
  def change
    create_table :time_table1s do |t|
      t.string :mon_1
      t.string :mon_2
      t.string :mon_3
      t.string :mon_4
      t.string :mon_5
      t.string :tue_1
      t.string :tue_2
      t.string :tue_3
      t.string :tue_4
      t.string :tue_5
      t.string :wed_1
      t.string :wed_2
      t.string :wed_3
      t.string :wed_4
      t.string :wed_5
      t.string :thus_1
      t.string :thus_2
      t.string :thus_3
      t.string :thus_4
      t.string :thus_5
      t.string :fri_1
      t.string :fri_2
      t.string :fri_3
      t.string :fri_4
      t.string :fri_5

      t.timestamps null: false
    end
  end
end
