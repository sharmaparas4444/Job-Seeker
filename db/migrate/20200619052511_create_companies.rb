class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.text :name,index: true
      t.text :url,index: true, unique: true
      t.text :location

      t.timestamps
    end
  end
end
