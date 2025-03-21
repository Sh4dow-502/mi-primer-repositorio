import json
import os
import sys

if __name__ == "__main__":
    try:
        virtual_env = sys.argv[1]
        current_dir = os.getcwd()

        content = {
            "python.pythonPath": f"/home/sh4dow/.pyenv/versions/{virtual_env}/bin/python",
            "python.analysis.extraPaths": ["./", current_dir],
            "python.linting.pylintEnabled": True,
            "python.linting.pylintArgs": ["--load-plugins=pylint_django"],
            "coc.preferences.formatOnSaveFiletypes": ["python", "html"],
            "emmet.includeLanguages": {"htmldjango": "html"},
            "html.suggest.html5": True,
            "coc.source.file.filetypes": ["django"],
            "html.filetypes": ["htmldjango"],
        }

        with open(f"{current_dir}/coc-settings.json", "w") as file:
            json.dump(content, file, indent=4)
    except Exception as _:
        print("Falto indicar el entorno virtual")
        pass
