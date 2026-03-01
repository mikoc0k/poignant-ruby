# mengenal def, case, when

=begin
def timeline(year)
    case year
    when 1999
        "The Matrix"
    when 2000..2009
        "The Lord of the Rings"
    when 2010
        "Inception"
    else
        "Unknown"
    end
end

puts timeline(2030)

=end

# contoh lain

year = 2022

#menggunakan case-when cara-1
=begin
case year
when 1894
    puts "lahir"
when 1895..1913
    puts "masa kecil"
else
    puts "tidak diketahui"
end
=end
#menggunakan case-when cara-2
=begin
bungkus = case year
when 1894
    "lahir"
when 1895..1913
    "masa kecil"
else
    "tidak diketahui"
end
puts bungkus
=end
# kedua cara diatas sama saja
# kedua cara diatas sebenarnya tersembunyi kode dibawah dibelakang layar

=begin
if 1894 === year # artinya : 1894.===(year),ruby mengijinkan penulisan tanpa titik (khusus method yang berupa operator)
    puts "lair"
elsif (1895..1913) === year # === adalah method class Integer dan Range
    puts "ijek cilik" # == mengecek exact value, === mengecek range,mengecek tipe data, mengecek kelas.
else
    puts "tidak diketahui"
end
=end

=begin
mangga = 16
if mangga > 20
    puts "mangga banyak"
elsif (15..19) === mangga
    puts "mangga pas"
else
    puts "mangga sedikit"
end
=end
# format komparasi dengan nilai dulu baru variabel, adalah terbaik pada saat
# kita melakukan komparasi dengan nilai range, dan pencocokan dengan kelas.
# selain dari itu, akan lebih mudah dibaca menggunakan format secara umum, yaitu variabel dulu baru nilai.

# def dan class
number = 5
p number.next

frasa = "jokowi is da kink"
p frasa.length

p number.class
p frasa.class

# Note :
# titik (.) adalah operator untuk memanggil method pada suatu objek
# double colon (::) memanggil class,module, konstanta