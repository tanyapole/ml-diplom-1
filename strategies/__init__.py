import sys

print(sys.path)
sys.path.insert(0, "/home/nduginec/ml3/ml-diplom")
sys.path.insert(0, "/home/ubuntu/ml3/ml-diplom")

from .abstract_train import *
from .sequential_train import *
from .simultaneous_train import *
from .baseline_strategy import *
