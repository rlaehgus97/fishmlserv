from sklearn.neighbors import KNeighborsClassifier
from fishmlserv.model.manager import get_model_path
import pickle
import fire

def knn_model(l:float, w:float):
    model_path = get_model_path()
    with open(model_path, 'rb') as f:
        fish_model = pickle.load(f)

    prediction = fish_model.predict([[l, w]])
    if prediction == 0:
        fish_name = "Bream"
    else:
        fish_name = "Smelt"
    print(f'물고기 예측 결과는 {fish_name}입니다.')
    return fish_name
if __name__ == '__main__':
  fire.Fire(knn_model)
