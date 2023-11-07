from cryptography.fernet import Fernet
from pathlib import Path
import io
import yaml

crypto = Fernet(b'e7oGT4eP18ePeph5VxYeRx-MGwwy_xkvoGyzcw7ePjU=')

def getDecodedPwd(pwd):
    a = bytes(pwd, 'utf-8')
    #decode to bytes first

    decrypted = crypto.decrypt(a).decode()
    return decrypted

def getParameter(field):
    a = Path.cwd().joinpath('devrunsetting.yaml')
    with io.open(a, 'r') as f:
        try:
            if (field != "password"):
                testdata = yaml.safe_load(f)
                return testdata[field]
                #no password in the file
            else:
                testdata = yaml.safe_load(f)
                #pwdTodecode = testdata[field]
                #Pasword value /\
                #pwdDecoded = getDecodedPwd(testdata[field])
                #return pwdDecoded
                return getDecodedPwd(testdata[field])
        except yaml.YAMLError as exc:
            print(exc)
