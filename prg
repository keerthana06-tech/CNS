1.Write a Python program to perform a dictionary attack on an MD5 hashed password using a list of commonly used passwords
import hashlib

target_password = input("Enter the target password: ")
target_hash = hashlib.md5(target_password.encode()).hexdigest()

password_list = [
    '123456',
    'password',
    'password123',
    'admin'
]

def crack_hash(target_hash, dictionary):
    for password in dictionary:
        hashed_password = hashlib.md5(password.encode()).hexdigest()

        if hashed_password == target_hash:
            print(f"Password found: {password}")
            return password

    print("Password not found!")
    return None

crack_hash(target_hash, password_list)







2.Write a Python program to perform a brute-force attack using a predefined list of passwords to identify a target password
def brute_force_attack(password_list, target_password):
    for password in password_list:
        print(f"Trying password: {password}")
        
        if password == target_password:
            print(f"Password found: {password}")
            return True

    print("Password not found!")
    return False

if __name__ == "__main__":
    password_list = [
        "123456", "password", "123456789", "12345678",
        "qwerty", "abc123", "monkey", "letmein",
        "dragon", "1111", "baseball"
    ]

  
    target_password = input("Enter the target password: ")

    print("Starting brute force attack...")

    success = brute_force_attack(password_list, target_password)

    if success:
        print("Brute force attack successful!")
    else:
        print("Brute force attack failed.")

        


        

3.Write a Python program to check the strength of a password based on length, uppercase letters, lowercase letters, digits, and special characters.
import re

def password_strength(password):
    if len(password) < 8:
        print("Password is too short")

    elif not re.search("[a-z]", password):
        print("Password should have at least one lowercase letter")

    elif not re.search("[A-Z]", password):
        print("Password should have at least one uppercase letter")

    elif not re.search("[0-9]", password):
        print("Password should have at least one digit")

    elif not re.search("[!@#$%^&*(),.?\":{}|<>]", password):
        print("Password should have at least one special character")

    else:
        print("Password is strong")


user_password = input("Enter a password to check its strength: ")
password_strength(user_password)






4.Write a Python script to perform a brute-force attack by generating all possible password combinations up to a given maximum length.

import itertools
import string
import time

def brute_force_attack(target_password, max_length):
    start_time = time.time()
    
    charset = string.ascii_letters + string.digits + string.punctuation

    for length in range(1, max_length + 1):
        for attempt in itertools.product(charset, repeat=length):
            attempt_password = ''.join(attempt)
            print(f"Trying password: {attempt_password}")

            if attempt_password == target_password:
                end_time = time.time()
                print("\nPassword found!")
                print(f"Password: {attempt_password}")
                print(f"Time taken: {end_time - start_time:.2f} seconds")
                return attempt_password

    print("\nPassword not found within the maximum length.")
    return None

target_password = "11"
max_length = 8

brute_force_attack(target_password, max_length)


