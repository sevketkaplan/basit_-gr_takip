class Devamsizlik < ApplicationRecord
	after_create :notify_subscribers

	def notify_subscribers
		client = Twilio::REST::Client.new
		ad=Devamsizlik.last.ad
		soyad=Devamsizlik.last.soyad
		devamsizlik=Devamsizlik.last.devamsizlik_miktari
		tarih=Devamsizlik.last.created_at.strftime("%d-%m-%Y")
		
		client.messages.create(
			from: "+13344588041",
			to: Devamsizlik.last.mesaj_tel,
			body: "Velisi olduğunuz " + ad + soyad + " isimli öğrencinin dershanemizde" + tarih + " tarihinde " + devamsizlik + " miktarinda devamsızlığı olmuştur. Bilginize."
			)
		
	end
end
