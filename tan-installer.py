#!/usr/bin/env python3
import sys


DATA_FILE=

# set -e equivalent
def fatal(msg):
    print(msg, file=sys.stderr)
    sys.exit(1)

# Variable Color (ANSI)
GR = "\033[1;32m"   # Green Bold
RD = "\033[0;31m"   # Red
CY = "\033[0;36m"   # Cyan
NC = "\033[0m"      # No Color

def check_network():
    pass

def keyboard():
    pass

def network():
    pass

def source():
    pass

def mirror():
    pass

def locale():
    pass

def timezone():
    pass

def hostname():
    pass

def user():
    pass

def root():
    pass

def bootloader():
    pass

def partition():
    pass

def file_systems():
    pass

def desktop():
    pass

def install():
    pass

def exit_save():
    sys.exit(0)

def exit_installer():
    sys.exit(0)

def menu_offline():
    while True:
        try:
            print(f"{RD} Note :")
            print(f"{CY} Can't Install Desktop & Other Package, CLI(Runit) Only{NC}")
            print("/===============================================\\")
            print("|   T 4 N - I N S T A L L E R - O F F L I N E   |")
            print("\\===============================================/")
            print("1. Keyboard            : Setup Keyboard")
            print("2. Network             : Setup Network")
            print("3. Source              : Setup Source/Mirror")
            print("4. Locale              : Setup Language,Date,Time & Encoding")
            print("5. Timezone            : Setup Timezone")
            print("6. Hostname            : Setup Hostname OS")
            print("7. User Account        : Setup User Account & Password")
            print("8. Root Password       : Setup Root Password")
            print("9. Bootloader          : Setup Bootloader")
            print("10. Partition          : Setup Partition User Friendly/Hard Mode")
            print("11. File Systems       : Setup Partition Mountpoints")
            print("12. Install            : Installation T4n OS")
            print("13. Exit & Save        : Exit & Save Configuration")
            print("14. Exit               : Exit Without Save")

            user = int(input("Choice Number: "))

def menu_online():
    print("/=============================================\\")
    print("|   T 4 N - I N S T A L L E R - O N L I N E   |")
    print("\\=============================================/")
    print("1. Keyboard            : Setup Keyboard")
    print("2. Source              : Setup Source/Mirror Official")
    print("3. Mirror              : Setup Other Mirror")
    print("4. Locale              : Setup Language,Date,Time & Encoding")
    print("5. Timezone            : Setup Timezone")
    print("6. Hostname            : Setup Hostname OS")
    print("7. User Account        : Setup User Account & Password")
    print("8. Root Password       : Setup Root Password")
    print("9. Bootloader          : Setup Bootloader")
    print("10. Partition          : Setup Partition User Friendly/Hard Mode")
    print("11. File Systems       : Setup Partition Mountpoints")
    print("12. Desktop            : Choose Desktop")
    print("13. Other Package      : Installation Other Package")
    print("14. Install            : Installation T4n OS")
    print("15. Exit & Save        : Exit & Save Configuration")
    print("16. Exit               : Exit Without Save")

def main():
    # placeholder main loop
    if check_network.offline :
        menu_offline()
    elif check_network.online :
        menu_online()
    # input handling nanti diisi

if __name__ == "__main__":
    main()

