class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.belongs_to :quiz, index: true
    	t.text :title

    	t.timestamps
    end
  end
end
