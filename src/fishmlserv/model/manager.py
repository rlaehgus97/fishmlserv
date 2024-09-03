import os

def get_model_path():
    file_name = 'model.pkl'
    current_directory = os.path.dirname(__file__)
    file_path = os.path.join(current_directory, file_name)

    return file_path
