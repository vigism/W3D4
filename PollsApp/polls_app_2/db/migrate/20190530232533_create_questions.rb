class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null:false
      t.string :question_text, null:false
      t.timestamps
    end
    add_index :questions, :poll_id, unique:true
  end
end
