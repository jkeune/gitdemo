#!/usr/bin/env python3
# -*- coding: utf-8 -*-

while True:

    number = input("An oracle will provide a YES or NO answer to any question if you type a 4 digit (unique) integer:\n")
    
    try: 
        int(number)
        
        if len(number)==4:
            _ = input("Now type your question:\n")
            if (int(number[0]) + int(number[1]) + int(number[2]) + int(number[3]))%2==0:
                print("---> YES")
                break
            else:
                print("---> NO")
        else:
            print("---> Can't you count, that's not a 4 digit number..")
        
    except ValueError:
        print("---> You idiot, that's not a number..")
