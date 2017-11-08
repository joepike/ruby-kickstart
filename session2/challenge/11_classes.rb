# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

Class BeerSong
    def initialize(beers)
        if beers < 0
            beers = 0
        elsif beers > 99
            beers = 99
        end
        self.beers = beers
    end
    
    def print_song
        beers.downto 1 do |i|
            print_stanza i
        end
    end
    
    def print_stanza(n)
        if n.zero? 
            String.new
        else
            puts "#{translate n} #{bottle n} of beer on the wall,"      ,
            puts "#{translate n} #{bottle n} of beer,"                  ,
            puts "Take one down, pass it around,"                       ,
            puts "#{translate n - 1} #{bottle n-1} of beer on the wall."
        end
    end
            
    def bottle(n)
        if n == 1 then 'bottle' else 'bottles' end
    end
    
    def translate(n)
        numbers_to_name = {1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",10=>"ten",
                           11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen",
                           18=>"eighteen",19=>"nineteen",20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",
                           70=>"seventy",80=>"eighty",90=>"ninety"}
        
        str = ""
        numbers_to_name.each do |num, name|
            if num == 0
                return str
            elsif n < 20 && n/num > 0
                return str + "#{name}"
            elsif n < 100 && n > 20 && int/num > 0
                return str + "#{name}" if int%num == 0
                return str + "#{name} " + 
    end
end

