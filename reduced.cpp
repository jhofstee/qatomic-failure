struct QTypedArrayData {
  int _M_i;
  void ref() {__atomic_fetch_add(&_M_i, 1, int()); }
};

struct QMovableArrayOps  {
  QMovableArrayOps();
  void insertOne(QMovableArrayOps);
  void emplace() {
     QMovableArrayOps dummy;
     insertOne(dummy);
  }
  QMovableArrayOps(QMovableArrayOps &other) : d(other.d), ptr(other.ptr) {
      d->ref();
  }
  QTypedArrayData *d;
  int *ptr;
};

int main() {
  QMovableArrayOps test;
  test.emplace();
  return 0;
}
