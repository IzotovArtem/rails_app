class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phonenumber
      t.string :email
      t.string :pofd
      t.string :destination
      t.float :length
      t.float :width
      t.float :height
      t.float :weight
      t.float :distance
      t.float :price

      t.timestamps
    end
  end
end
