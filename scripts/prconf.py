import sys
import os
import json


if __name__ == "__main__":
    try:
        virtual_env = sys.argv[1]
        current_dir = os.getcwd()

        content = {
            "root": current_dir,
            "venv": virtual_env,
            "venvPath": "./",
            "python": f"./{virtual_env}/bin/python",
        }
        json_content = json.dumps(content, ensure_ascii=False, indent=4)

        file = open(f"{current_dir}/pyrightconfig.json", "w")
        file.write(json_content)
    except Exception as _:
        print("Falto indicar el entorno virtual")
        pass
