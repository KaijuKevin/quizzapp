class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
    	t.text :name

    	t.timestamps
    end
  end
end
