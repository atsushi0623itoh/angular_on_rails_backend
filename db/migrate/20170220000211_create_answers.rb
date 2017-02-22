class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :content, null: false
      t.references :question, index: true, null: false

      t.timestamps null: false
    end
  end
end
