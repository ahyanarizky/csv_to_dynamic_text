require 'csv'
table = CSV.parse(File.read('csv_indo.csv'), headers: true)
text = ''
for x in 0..table.size-1 do
  # puts x
  text += "\n=================#{table[x]['Firstname']}================

  Yth. Bapak/Ibu #{table[x]['Firstname']},

  Kami harap Anda baik-baik saja di tengah-tengah masa yang tak terduga ini.

  Di sini, di Smarter Health, kami baru saja meluncurkan fitur Ulasan + Peringkat di situs web kami di mana Anda dapat memberikan ulasan + penilaian untuk dokter yang telah Anda temui.

  Fitur ini membantu pengguna dan pasien lain dengan rekomendasi atau rujukan yang bermanfaat bagi mereka dalam hal dapat memvisualisasikan pengalaman yang Anda berkonsultasi dengan dokter Kami. Ulasan + peringkat Anda berpotensi memengaruhi pasien kami berikutnya dalam hal memilih dokter untuk mengobati kebutuhan medis mereka.

  Jika Anda dapat berbagi ulasan + penilaian tentang pengalaman Anda dengan #{table[x]['Name of Physician Scheduled']}, yang Anda temui pada #{table[x]['DayConsult']} #{table[x]['MonthConsult']} #{table[x]['YearConsult']}, itu akan sangat berharga bagi komunitas pasien kami.

  Anda dapat dengan mudah meninggalkan ulasan + peringkat untuk #{table[x]['Name of Physician Scheduled']} melalui halaman profilnya: https://www.smarterhealth.id/dokter-spesialis/#{table[x]['Name of Physician Scheduled'].to_s.strip.gsub(/Prof.|drg.|Dr.|Dr|dr.|dr,|Dr,|drg,|dr|drg|/, "").strip.downcase.gsub(' ', '-')}/
  Terima kasih sebelumnya atas perhatian Anda yang berharga.

  Hormat kami,
  Smarter Health
  ========================================
  "
end

File.write('csv_indo.txt', text)

puts 'success'

