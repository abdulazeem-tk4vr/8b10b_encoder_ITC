import encodecode as e
running_disp = 0
byte_to_enc = 0b00111101  #8 bit input given to the encoder
encoded = e.EncDec_8B10B.enc_8b10b(byte_to_enc, running_disp)  #processing done here by transferring call to the function
#print(bin(encoded))

string = bin(encoded)  #formatting the output as per our requirement
reversed = string[::-1]
reversed = reversed[:-2]
print(reversed) #10 bit outout