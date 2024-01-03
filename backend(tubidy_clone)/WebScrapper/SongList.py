import json
import string


class Song:
    def __init__(self, data, file_path_value):
        self.data = data
        self.file_path_value = file_path_value
        pass

    def create_json(self):
        file_path = self.file_path_value
        convert_to_json = json.dumps(json.loads(self.data), indent=4)
        with open(file_path, "w") as json_file:
            json_file.write(convert_to_json)

        print("JSON data has been stored in", file_path)
