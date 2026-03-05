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

=begin

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
# double colon (::) mengakses class,module, konstanta

daftar_konstanta = Object::constants
# p daftar_konstanta
=begin
def wipe_from(sentences)
    while sentences.include?("(")
        open = sentences.index( "(" )
        close = sentences.index(")", open)
        sentences[open..close] = "" if close
    end
end

kalimah = "saya (tidak) suka makan nasi. makanan (bukan) favorit saya adalah nasi (goreng)"
#wipe_from(kalimah)
#puts kalimah

# wipe_from menggunakan regex
def wipe_of(teks)
    teks.gsub!(/\s*\(.*?\)/,"")
end

wipe_of(kalimah)
puts kalimah

=end

=begin
x = 5
x = x + 1
puts x # x = 6

y = "jokowidodol"
y = y.length
puts y

z = :include? # nama method bs string bs symbol
# z = "include?""
z = "jokowowo makan harta negara".respond_to?(z) # string dicek apakah memiliki method :include?
puts z # bernilai true
xx = "halo".respond_to?("include?")
puts xx
=end
pres = "jokowi-makan-besi-kalimantan"
# Penggunaan self
# hal dibawah dinamakan monkey patching, yaitu menambahkan method pada class yang sudah ada, dalam hal ini class String

=begin
class String
    def split_goblok
        self.split("-") # self merujuk pada objek yang memanggil method ini,
        # self digunakan saat kita membuat method yang nempel dengan kelas.
    end
end

print pres.split_goblok # memanggil method split_goblok pada class String
print "\n"
print "joko-wiwi".split_goblok

=end

=begin

# monkey patching yang lebih baik. yaitu menggunakan module lalu meng-include nya(attach) ke class yang diinginkan
module Goblok
    def split_goblok
        self.split("-")
    end
end

String.include(Goblok) # meng-include module goblok ke class String
print pres.split_goblok
=end

# membuat method nempel di objek (singleton)

mobil = "sedan 1700cc"
def mobil.teriak
    puts "brummmm brummmmmm "
end

