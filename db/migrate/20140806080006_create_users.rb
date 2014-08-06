class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :passord
      t.string :question_of_password
      t.string :answer_of_password

      t.timestamps
    end
  end
end
