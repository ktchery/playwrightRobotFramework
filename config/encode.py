from cryptography.fernet import Fernet
#key = Fernet.generate_key()

#print(key)

crypto = Fernet(b'e7oGT4eP18ePeph5VxYeRx-MGwwy_xkvoGyzcw7ePjU=')
#Key
password = input("Enter the password: ")

encrypted = crypto.encrypt(password.encode())

print(str(encrypted,"utf-8"))
#To get a string







