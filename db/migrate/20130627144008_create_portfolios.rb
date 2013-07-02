class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.text :url
      t.text :taken
      t.text :url_large

      t.timestamps
    end
  end
end
