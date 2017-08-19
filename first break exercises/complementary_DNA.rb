#metoda zwracająca komplementarną nic DNA

def complementary_DNA(str)
 a= str.gsub(/[ATCG]/, 'A' =>'T' , 'T'=>'A', 'C'=>'G','G'=>'C')
 puts a
end

complementary_DNA(gets.chomp)
