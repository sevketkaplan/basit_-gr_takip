class Odev < ApplicationRecord

	def self.to_csv(options = {})
		desired_columns = ["id","ad","soyad","sinif","ders_adi","date","teslim_date"]
		CSV.generate(options) do |csv|
			csv << desired_columns
			all.each do |odev|
				csv << odev.attributes.values_at(*desired_columns)
			end
		end
	end
end
