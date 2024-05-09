import os

paths_to_read = [
    r"C:\ServerMini\Olivia Magyar\assets\css\wio_custom.css",
    r"C:\ServerMini\Olivia Magyar\assets\css\sfs_custom.css",
    r"C:\ServerMini\Olivia Magyar\assets\css\sfb_custom.css",
    r"C:\ServerMini\Olivia Magyar\assets\css\main_custom.css",
    r"C:\ServerMini\Olivia Magyar\assets\css\nav_custom.css",
    r"C:\ServerMini\Olivia Magyar\assets\js\scroll_custom.js",
    r"C:\ServerMini\Olivia Magyar\assets\js\nav_custom.js",
    r"C:\ServerMini\Olivia Magyar\index.html"
]

def print_file_contents(paths):
    for path in paths:
        if os.path.exists(path):
            if os.path.isfile(path):
                print(f"Contents of {path}:")
                with open(path, 'r') as file:
                    print(file.read())
                print("\n" + "#" * 40 + "\n")  
            else:
                print(f"{path} is not a file or does not exist.")
        else:
            print(f"File {path} does not exist.")

if __name__ == "__main__":
    print_file_contents(paths_to_read)