import os
import shutil

def fetch_vim_files():
    """"function will fetch my vim files with a Win10 OS"""
    cwd = os.getcwd()
    folder = "C:\\Program Files (x86)\\Vim"
    list_of_files_to_move = [file for file in os.listdir(folder) 
                             if file not in ['vimfiles', 'vim82']]
    for file in list_of_files_to_move:
        shutil.copyfile(folder + "\\" + file, 
                        cwd + "\\" + file)
    
    print("All files moved")
    
    return None

if __name__ == "__main__":
    fetch_vim_files()
