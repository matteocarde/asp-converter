
class Result:
    name: str
    optimum: int
    status: str
    time: float

    def __init__(self, name, optimum, status, time):
        self.name = name
        self.optimum = optimum
        self.status = status
        self.time = time