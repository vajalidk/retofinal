# app/main.py

import os
from app.utils import print_message

def main():
    print("Proyecto DevOps - AWS")
    print_message()

    # Crear un log de ejecución
    log_path = os.path.join("logs", "app.log")
    with open(log_path, "a") as log_file:
        log_file.write("Aplicación iniciada correctamente.\n")

if __name__ == "__main__":
    main()

